package utils;

public class MD5 {
	static final int S11 = 7;
	static final int S12 = 12;
	static final int S13 = 17;
	static final int S14 = 22;

	static final int S21 = 5;
	static final int S22 = 9;
	static final int S23 = 14;
	static final int S24 = 20;

	static final int S31 = 4;
	static final int S32 = 11;
	static final int S33 = 16;
	static final int S34 = 23;

	static final int S41 = 6;
	static final int S42 = 10;
	static final int S43 = 15;
	static final int S44 = 21;
	
	static final byte[] PADDING = { -128, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
	/**
	 * state (ABCD)
	 * number of bits, modulo 2^64 (lsb first)
	 * input buffer
	 */
	static private long[] state = new long[4];
	static private long[] count = new long[2];
	static private byte[] buffer = new byte[64];
	
	static private String digestHexStr;
	
	static private byte[] digest = new byte[16];
	
	public MD5() {
		md5Init();
	}
	
	/**
	 * 获取MD5加密
	 * @param inbuf 加密字符串
	 * @return 加密结果
	 */
	static public String getMD5ofStr(String inbuf) {
		md5Init();
		md5Update(inbuf.getBytes(), inbuf.length());
		md5Final();
		digestHexStr = "";
		for (int i = 0; i < 16; i++) {
		digestHexStr += byteHEX(digest[i]);
		}
		return digestHexStr;
	}
	
	static private String byteHEX(byte ib) {
		char[] Digit = { '0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F' };
		char [] ob = new char[2];
		ob[0] = Digit[(ib >>> 4) & 0X0F];
		ob[1] = Digit[ib & 0X0F];
		String s = new String(ob);
		return s;
	}
	
	static private void md5Init() {
		count[0] = 0L;
		count[1] = 0L;
		
		/**
		 * Load magic initialization constants.
		 */
		state[0] = 0x67452301L;
		state[1] = 0xefcdab89L;
		state[2] = 0x98badcfeL;
		state[3] = 0x10325476L;
	}
	
	static private void md5Final () {
		byte[] bits = new byte[8];
		int index, padLen;
		
		/**
		 *  Save number of bits
		 */
		Encode (bits, count, 8);
		
		/**
		 * Pad out to 56 mod 64.
		 */
		index = (int)(count[0] >>> 3) & 0x3f;
		padLen = (index < 56) ? (56 - index) : (120 - index);
		md5Update (PADDING, padLen);

		/**
		 * Append length (before padding)
		 */
		md5Update(bits, 8);

		/**
		 * Store state in digest
		 */
		Encode (digest, state, 16);
	}
	
	static private void md5Update(byte[] inbuf, int inputLen) {
		
		int i, index, partLen;
		byte[] block = new byte[64];
		index = (int)(count[0] >>> 3) & 0x3F;
		/**
		 * Update number of bits
		 */
		if ((count[0] += (inputLen << 3)) < (inputLen << 3)) {
			count[1] ++;
		}
		count[1] += (inputLen >>> 29);
		partLen = 64 - index;

		if (inputLen >= partLen) {
			md5Memcpy(buffer, inbuf, index, 0, partLen);
			md5Transform(buffer);
			
			for (i = partLen; i + 63 < inputLen; i += 64) {
				md5Memcpy(block, inbuf, 0, i, 64);
				md5Transform (block);
			}
			index = 0;
		} else {
			i = 0;
		}
		/**
		 * Buffer remaining input
		 */
		md5Memcpy(buffer, inbuf, index, i, inputLen - i);
	}
	
	static private void md5Transform (byte block[]) {
		long a = state[0], b = state[1], c = state[2], d = state[3];
		long[] x = new long[16];
		
		Decode (x, block, 64);

		/**
		 * Round 1
		 * 1-16
		 */
		a = FF (a, b, c, d, x[0], S11, 0xd76aa478L);
		d = FF (d, a, b, c, x[1], S12, 0xe8c7b756L);
		c = FF (c, d, a, b, x[2], S13, 0x242070dbL); 
		b = FF (b, c, d, a, x[3], S14, 0xc1bdceeeL);
		a = FF (a, b, c, d, x[4], S11, 0xf57c0fafL);
		d = FF (d, a, b, c, x[5], S12, 0x4787c62aL);
		c = FF (c, d, a, b, x[6], S13, 0xa8304613L);
		b = FF (b, c, d, a, x[7], S14, 0xfd469501L);
		a = FF (a, b, c, d, x[8], S11, 0x698098d8L);
		d = FF (d, a, b, c, x[9], S12, 0x8b44f7afL);
		c = FF (c, d, a, b, x[10], S13, 0xffff5bb1L);
		b = FF (b, c, d, a, x[11], S14, 0x895cd7beL);
		a = FF (a, b, c, d, x[12], S11, 0x6b901122L);
		d = FF (d, a, b, c, x[13], S12, 0xfd987193L);
		c = FF (c, d, a, b, x[14], S13, 0xa679438eL);
		b = FF (b, c, d, a, x[15], S14, 0x49b40821L);

		/**
		 * Round 2
		 * 17-32
		 */
		a = GG (a, b, c, d, x[1], S21, 0xf61e2562L);
		d = GG (d, a, b, c, x[6], S22, 0xc040b340L);
		c = GG (c, d, a, b, x[11], S23, 0x265e5a51L); 
		b = GG (b, c, d, a, x[0], S24, 0xe9b6c7aaL);
		a = GG (a, b, c, d, x[5], S21, 0xd62f105dL);
		d = GG (d, a, b, c, x[10], S22, 0x2441453L);
		c = GG (c, d, a, b, x[15], S23, 0xd8a1e681L);
		b = GG (b, c, d, a, x[4], S24, 0xe7d3fbc8L);
		a = GG (a, b, c, d, x[9], S21, 0x21e1cde6L);
		d = GG (d, a, b, c, x[14], S22, 0xc33707d6L);
		c = GG (c, d, a, b, x[3], S23, 0xf4d50d87L);
		b = GG (b, c, d, a, x[8], S24, 0x455a14edL);
		a = GG (a, b, c, d, x[13], S21, 0xa9e3e905L);
		d = GG (d, a, b, c, x[2], S22, 0xfcefa3f8L);
		c = GG (c, d, a, b, x[7], S23, 0x676f02d9L);
		b = GG (b, c, d, a, x[12], S24, 0x8d2a4c8aL);

		/**
		 * Round 3
		 * 33-48
		 */
		a = HH (a, b, c, d, x[5], S31, 0xfffa3942L);
		d = HH (d, a, b, c, x[8], S32, 0x8771f681L);
		c = HH (c, d, a, b, x[11], S33, 0x6d9d6122L);
		b = HH (b, c, d, a, x[14], S34, 0xfde5380cL);
		a = HH (a, b, c, d, x[1], S31, 0xa4beea44L); 
		d = HH (d, a, b, c, x[4], S32, 0x4bdecfa9L);
		c = HH (c, d, a, b, x[7], S33, 0xf6bb4b60L);
		b = HH (b, c, d, a, x[10], S34, 0xbebfbc70L);
		a = HH (a, b, c, d, x[13], S31, 0x289b7ec6L);
		d = HH (d, a, b, c, x[0], S32, 0xeaa127faL);
		c = HH (c, d, a, b, x[3], S33, 0xd4ef3085L);
		b = HH (b, c, d, a, x[6], S34, 0x4881d05L);
		a = HH (a, b, c, d, x[9], S31, 0xd9d4d039L);
		d = HH (d, a, b, c, x[12], S32, 0xe6db99e5L);
		c = HH (c, d, a, b, x[15], S33, 0x1fa27cf8L);
		b = HH (b, c, d, a, x[2], S34, 0xc4ac5665L);

		/**
		 * Round 4
		 * 49-64
		 */
		a = II (a, b, c, d, x[0], S41, 0xf4292244L);
		d = II (d, a, b, c, x[7], S42, 0x432aff97L);
		c = II (c, d, a, b, x[14], S43, 0xab9423a7L);
		b = II (b, c, d, a, x[5], S44, 0xfc93a039L);
		a = II (a, b, c, d, x[12], S41, 0x655b59c3L);
		d = II (d, a, b, c, x[3], S42, 0x8f0ccc92L);
		c = II (c, d, a, b, x[10], S43, 0xffeff47dL);
		b = II (b, c, d, a, x[1], S44, 0x85845dd1L);
		a = II (a, b, c, d, x[8], S41, 0x6fa87e4fL);
		d = II (d, a, b, c, x[15], S42, 0xfe2ce6e0L);
		c = II (c, d, a, b, x[6], S43, 0xa3014314L);
		b = II (b, c, d, a, x[13], S44, 0x4e0811a1L);
		a = II (a, b, c, d, x[4], S41, 0xf7537e82L);
		d = II (d, a, b, c, x[11], S42, 0xbd3af235L);
		c = II (c, d, a, b, x[2], S43, 0x2ad7d2bbL);
		b = II (b, c, d, a, x[9], S44, 0xeb86d391L);

		state[0] += a;
		state[1] += b;
		state[2] += c;
		state[3] += d;
	}
	
	static private void Encode (byte[] output, long[] input, int len) {
		int i, j;
		for (i = 0, j = 0; j < len; i++, j += 4) {
			output[j] = (byte)(input[i] & 0xffL);
			output[j + 1] = (byte)((input[i] >>> 8) & 0xffL);
			output[j + 2] = (byte)((input[i] >>> 16) & 0xffL);
			output[j + 3] = (byte)((input[i] >>> 24) & 0xffL);
		}
	}
	
	static private void Decode (long[] output, byte[] input, int len) {
		int i, j;
		for (i = 0, j = 0; j < len; i++, j += 4)
			output[i] = b2iu(input[j]) | 
						(b2iu(input[j + 1]) << 8) | 
						(b2iu(input[j + 2]) << 16) | 
						(b2iu(input[j + 3]) << 24);
	}
	
	static private long b2iu(byte b) {
		return b < 0 ? b & 0x7F + 128 : b;
	}
	
	static private void md5Memcpy (byte[] output, byte[] input, int outpos, int inpos, int len) {
		int i;
		for (i = 0; i < len; i++)
			output[outpos + i] = input[inpos + i];
	}
	
	static private long FF(long a, long b, long c, long d, long x, long s, long ac) {
		a += F (b, c, d) + x + ac;
		a = ((int) a << s) | ((int) a >>> (32 - s));
		a += b;
		return a;
	}
	
	static private long GG(long a, long b, long c, long d, long x, long s, long ac) {
		a += G (b, c, d) + x + ac;
		a = ((int) a << s) | ((int) a >>> (32 - s));
		a += b;
		return a;
	}
	
	static private long HH(long a, long b, long c, long d, long x, long s, long ac) {
		a += H (b, c, d) + x + ac;
		a = ((int) a << s) | ((int) a >>> (32 - s));
		a += b;
		return a;
	}
	
	static private long II(long a, long b, long c, long d, long x, long s, long ac) {
		a += I (b, c, d) + x + ac;
		a = ((int) a << s) | ((int) a >>> (32 - s));
		a += b;
		return a;
	}
	
	static private long F(long x, long y, long z) {
		return (x & y) | ((~x) & z);
	}
	
	static private long G(long x, long y, long z) {
		return (x & z) | (y & (~z));
	}
	
	static private long H(long x, long y, long z) {
		return x ^ y ^ z;
	}
	
	static private long I(long x, long y, long z) {
		return y ^ (x | (~z));
	}
}
