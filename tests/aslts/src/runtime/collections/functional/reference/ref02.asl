/*
 * Some or all of this work - Copyright (c) 2006 - 2017, Intel Corp.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 * Neither the name of Intel Corporation nor the names of its contributors
 * may be used to endorse or promote products derived from this software
 * without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

/*
 * References
 *
 * TABLE 5: all the legal ways to generate references to LocalX
 *
 * Producing Reference operators:
 *
 *    Index, RefOf, CondRefOf
 */

Name(z078, 78)

// ///////////////////////////////////////////////////////////////////////////
//
// TABLE 5: all the legal ways to generate references to LocalX
//
// ///////////////////////////////////////////////////////////////////////////

// m169,m190
Method(m170)
{
	if (y100) {
		ts00("m170")
	} else {
		Store("m170", Debug)
	}

	// T5:I2-I4

	// Computational Data

	Store(s900, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c016, 0, 0, c009, 0x31, 1)

	Store(s901, Local7)
	Store(Index(Local7, 2), Local0)
	m1a2(Local0, c016, 0, 0, c009, 0x72, 2)

	Store(b900, Local7)
	Store(Index(Local7, 3), Local0)
	m1a2(Local0, c016, 0, 0, c009, 0xb3, 3)

	// Elements of Package are Uninitialized

	if (y104) {
		Store(p900, Local7)
		Store(Index(Local7, 0), Local0)
		m1a0(Local0, c008, Ones, 4)
	}

	// Elements of Package are Computational Data

	Store(p901, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c009, 0, 0, c009, 0xabcd0004, 5)

	Store(p901, Local7)
	Store(Index(Local7, 1), Local0)
	m1a2(Local0, c009, 0, 0, c009, 0x1122334455660005, 6)

	Store(p902, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "12340006", 7)

	Store(p902, Local7)
	Store(Index(Local7, 1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "q1w2e3r4t5y6u7i80007", 8)

	Store(p903, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "qwrtyuiop0008", 9)

	Store(p903, Local7)
	Store(Index(Local7, 1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "1234567890abdef0250009", 10)

	Store(p904, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00b, 0, 0, c00b, Buffer() {0xb5,0xb6,0xb7}, 11)

	Store(p905, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00c, 1, 0, c009, 0xabc000a, 12)

	Store(p905, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00c, 1, 1, c00a, "0xabc000b", 13)

	Store(p906, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00c, 1, 0, c00a, "abc000d", 14)

	Store(p907, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00c, 1, 0, c00a, "aqwevbgnm000e", 15)

	Store(p908, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00c, 1, 0, c00b, Buffer() {0xba,0xbb,0xbc,0xbd,0xbe}, 16)

	Store(p909, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00c, 2, 0, c009, 0xabc000f, 17)

	Store(p90a, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00c, 2, 0, c00a, "12340010", 18)

	Store(p90b, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00c, 2, 0, c00a, "zxswefas0011", 19)

	Store(p90c, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00c, 2, 0, c00b, Buffer() {0xbf,0xc0,0xc1}, 20)

	// In-package name strings are String typed, not ObjectReference
	// typed.

	// Elements of Package are NameString

	Store(p90d, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "I900", 21)

	Store(p90e, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "I901", 22)

	Store(p90f, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "S900", 23)

	Store(p910, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "S901", 24)

	Store(p911, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "B9Z0", 25)

	Store(p912, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "F900", 26)

	Store(p913, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "BN90", 27)

	Store(p914, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "IF90", 28)

	Store(p915, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "BF90", 29)

	Store(p916, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "D900", 30)

	Store(p917, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "E900", 31)

	Store(p918, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "MX90", 32)

	Store(p919, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "R9Z0", 33)

	Store(p91a, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "PW90", 34)

	Store(p91b, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "PR90", 35)

	Store(p91c, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "TZ90", 36)

	Store(p91d, Local7)
	Store(Index(Local7, 0), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "M900", 37)

	// T5:IR2-IR4

	// Computational Data

	Store(s900, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c016, 0, 0, c009, 0x31, 91)
	m1a2(Local1, c016, 0, 0, c009, 0x31, 92)

	Store(s901, Local7)
	Store(Index(Local7, 2, Local1), Local0)
	m1a2(Local0, c016, 0, 0, c009, 0x72, 93)
	m1a2(Local1, c016, 0, 0, c009, 0x72, 94)

	Store(b900, Local7)
	Store(Index(Local7, 4, Local1), Local0)
	m1a2(Local0, c016, 0, 0, c009, 0xb4, 95)
	m1a2(Local1, c016, 0, 0, c009, 0xb4, 96)

	// Elements of Package are Uninitialized

	if (y104) {
		Store(p900, Local7)
		Store(Index(Local7, 0, Local1), Local0)
		m1a0(Local0, c008, Ones, 97)
		m1a0(Local1, c008, Ones, 98)
	}

	// Elements of Package are Computational Data

	Store(p901, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c009, 0, 0, c009, 0xabcd0004, 99)
	m1a2(Local1, c009, 0, 0, c009, 0xabcd0004, 100)

	Store(p901, Local7)
	Store(Index(Local7, 1, Local1), Local0)
	m1a2(Local0, c009, 0, 0, c009, 0x1122334455660005, 101)
	m1a2(Local1, c009, 0, 0, c009, 0x1122334455660005, 102)

	Store(p902, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "12340006", 103)
	m1a2(Local1, c00a, 0, 0, c00a, "12340006", 104)

	Store(p902, Local7)
	Store(Index(Local7, 1, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "q1w2e3r4t5y6u7i80007", 105)
	m1a2(Local1, c00a, 0, 0, c00a, "q1w2e3r4t5y6u7i80007", 106)

	Store(p903, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "qwrtyuiop0008", 107)
	m1a2(Local1, c00a, 0, 0, c00a, "qwrtyuiop0008", 108)

	Store(p903, Local7)
	Store(Index(Local7, 1, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "1234567890abdef0250009", 109)
	m1a2(Local1, c00a, 0, 0, c00a, "1234567890abdef0250009", 110)

	Store(p904, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00b, 0, 0, c00b, Buffer() {0xb5,0xb6,0xb7}, 111)
	m1a2(Local1, c00b, 0, 0, c00b, Buffer() {0xb5,0xb6,0xb7}, 112)

	Store(p905, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00c, 1, 0, c009, 0xabc000a, 113)
	m1a2(Local1, c00c, 1, 0, c009, 0xabc000a, 114)

	Store(p905, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00c, 1, 1, c00a, "0xabc000b", 115)
	m1a2(Local1, c00c, 1, 1, c00a, "0xabc000b", 116)

	Store(p906, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00c, 1, 0, c00a, "abc000d", 117)
	m1a2(Local1, c00c, 1, 0, c00a, "abc000d", 118)

	Store(p907, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00c, 1, 0, c00a, "aqwevbgnm000e", 119)
	m1a2(Local1, c00c, 1, 0, c00a, "aqwevbgnm000e", 120)

	Store(p908, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00c, 1, 0, c00b, Buffer() {0xba,0xbb,0xbc,0xbd,0xbe}, 121)
	m1a2(Local1, c00c, 1, 0, c00b, Buffer() {0xba,0xbb,0xbc,0xbd,0xbe}, 122)

	Store(p909, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00c, 2, 0, c009, 0xabc000f, 123)
	m1a2(Local1, c00c, 2, 0, c009, 0xabc000f, 124)

	Store(p90a, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00c, 2, 0, c00a, "12340010", 125)
	m1a2(Local1, c00c, 2, 0, c00a, "12340010", 126)

	Store(p90b, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00c, 2, 0, c00a, "zxswefas0011", 127)
	m1a2(Local1, c00c, 2, 0, c00a, "zxswefas0011", 128)

	Store(p90c, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00c, 2, 0, c00b, Buffer() {0xbf,0xc0,0xc1}, 129)
	m1a2(Local1, c00c, 2, 0, c00b, Buffer() {0xbf,0xc0,0xc1}, 130)

	// In-package name strings are String typed, not ObjectReference
	// typed.

	// Elements of Package are NameString

	Store(p90d, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "I900", 131)
	m1a2(Local1, c00a, 0, 0, c00a, "I900", 132)

	Store(p90e, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "I901", 133)
	m1a2(Local1, c00a, 0, 0, c00a, "I901", 134)

	Store(p90f, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "S900", 135)
	m1a2(Local1, c00a, 0, 0, c00a, "S900", 136)

	Store(p910, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "S901", 137)
	m1a2(Local1, c00a, 0, 0, c00a, "S901", 138)

	Store(p911, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "B9Z0", 139)
	m1a2(Local1, c00a, 0, 0, c00a, "B9Z0", 140)

	Store(p912, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "F900", 141)
	m1a2(Local1, c00a, 0, 0, c00a, "F900", 142)

	Store(p913, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "BN90", 143)
	m1a2(Local1, c00a, 0, 0, c00a, "BN90", 144)

	Store(p914, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "IF90", 145)
	m1a2(Local1, c00a, 0, 0, c00a, "IF90", 146)

	Store(p915, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "BF90", 147)
	m1a2(Local1, c00a, 0, 0, c00a, "BF90", 148)

	Store(p916, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "D900", 149)
	m1a2(Local1, c00a, 0, 0, c00a, "D900", 150)

	Store(p917, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "E900", 151)
	m1a2(Local1, c00a, 0, 0, c00a, "E900", 152)

	Store(p918, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "MX90", 153)
	m1a2(Local1, c00a, 0, 0, c00a, "MX90", 154)

	Store(p919, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "R9Z0", 155)
	m1a2(Local1, c00a, 0, 0, c00a, "R9Z0", 156)

	Store(p91a, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "PW90", 157)
	m1a2(Local1, c00a, 0, 0, c00a, "PW90", 158)

	Store(p91b, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "PR90", 159)
	m1a2(Local1, c00a, 0, 0, c00a, "PR90", 160)

	Store(p91c, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "TZ90", 161)
	m1a2(Local1, c00a, 0, 0, c00a, "TZ90", 162)

	Store(p91d, Local7)
	Store(Index(Local7, 0, Local1), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "M900", 163)
	m1a2(Local1, c00a, 0, 0, c00a, "M900", 164)

	m1a6()
}

// m16a,m191
// arg1 - writing mode
Method(m171, 2)
{
	if (y100) {
		ts00("m171")
	} else {
		Store("m171", Debug)
	}

	// T5:R0-R5,R14

	// Uninitialized Local

	if (Arg0) {
		Store(0, Local7)
	}
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c008, Ones, 1000)

	// Computational Data

	Store(i900, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c009, 0, 0, c009, 0xfe7cb391d65a0000, 271)

	Store(i901, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c009, 0, 0, c009, 0xc1790001, 272)

	Store(s900, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "12340002", 273)

	Store(s901, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00a, 0, 0, c00a, "qwrtyu0003", 274)

	Store(b900, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00b, 0, 0, c00b, Buffer() {0xb0,0xb1,0xb2,0xb3,0xb4}, 275)

	// Not Computational Data

	// Package

	Store(p953, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 1, 0, c009, 0xabcd0018, 1007)

	if (arg1) {

		// Data are unchanged, because writings were made
		// into the new objects assosiated with Local7.

		m1a6()
		return
	}

	// Computational Data (Field Unit and Buffer Field)

	Store(f900, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c009, 0, 0, c009, 0, 276)

	Store(bn90, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c009, 0, 0, c009, 0, 277)

	Store(if90, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c009, 0, 0, c009, 0, 278)

	Store(bf90, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c009, 0, 0, c009, 0xb0, 279)

	// Elements of Package are Uninitialized

	Store(p900, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 287)

	// Elements of Package are Computational Data

	Store(p901, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 1, 0, c009, 0xabcd0004, 288)
	m1a2(Local0, c00c, 1, 1, c009, 0x1122334455660005, 289)

	Store(p902, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 1, 0, c00a, "12340006", 290)
	m1a2(Local0, c00c, 1, 1, c00a, "q1w2e3r4t5y6u7i80007", 291)

	Store(p903, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 1, 0, c00a, "qwrtyuiop0008", 292)
	m1a2(Local0, c00c, 1, 1, c00a, "1234567890abdef0250009", 293)

	Store(p904, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 1, 0, c00b, Buffer() {0xb5,0xb6,0xb7}, 294)

	Store(p905, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 2, 0, c009, 0xabc000a, 295)
	m1a2(Local0, c00c, 2, 1, c00a, "0xabc000b", 296)

	Store(p906, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 2, 0, c00a, "abc000d", 297)

	Store(p907, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 2, 0, c00a, "aqwevbgnm000e", 298)

	Store(p908, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 2, 0, c00b, Buffer() {0xba,0xbb,0xbc,0xbd,0xbe}, 299)

	Store(p909, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 3, 0, c009, 0xabc000f, 300)

	Store(p90a, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 3, 0, c00a, "12340010", 301)

	Store(p90b, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 3, 0, c00a, "zxswefas0011", 302)

	Store(p90c, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 3, 0, c00b, Buffer() {0xbf,0xc0,0xc1}, 303)

	Store(p90d, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 1, 0, c009, 0xfe7cb391d65a0000, 304)

	Store(p90e, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 1, 0, c009, 0xc1790001, 305)

	Store(p90f, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 1, 0, c00a, "12340002", 306)

	Store(p910, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 1, 0, c00a, "qwrtyu0003", 307)

	Store(p911, Local7)
	Store(RefOf(Local7), Local0)
	m1a2(Local0, c00c, 1, 0, c00b, Buffer() {0xb0,0xb1,0xb2,0xb3,0xb4}, 308)

	if (y118) {
		Store(p912, Local7)
		Store(RefOf(Local7), Local0)
		m1a2(Local0, c00c, 1, 0, c00d, 0, 309)

		Store(p913, Local7)
		Store(RefOf(Local7), Local0)
		m1a2(Local0, c00c, 1, 0, c00d, 0, 310)

		Store(p914, Local7)
		Store(RefOf(Local7), Local0)
		m1a2(Local0, c00c, 1, 0, c00d, 0, 311)

		Store(p915, Local7)
		Store(RefOf(Local7), Local0)
		m1a2(Local0, c00c, 1, 0, c016, 0xb0, 312)
	}

	// Elements of Package are NOT Computational Data

	Store(p916, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 313)

	Store(p917, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 314)

	Store(p918, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 315)

	Store(p919, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 316)

	Store(p91a, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 317)

	Store(p91b, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 318)

	Store(p91c, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 319)

	// Elements of Package are Methods

	Store(p91d, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 320)

	Store(p91e, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 321)

	Store(p91f, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 322)

	Store(p920, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 323)

	Store(p921, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 324)

	Store(p922, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 325)

	Store(p923, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 326)

	Store(p924, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 327)

	Store(p925, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 328)

	Store(p926, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 329)

	Store(p927, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 330)

	Store(p928, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 331)

	Store(p929, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 332)

	Store(p92a, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 333)

	Store(p92b, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 334)

	Store(p92c, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 335)

	Store(p92d, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 336)

	Store(p92e, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 337)

	Store(p92f, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 338)

	Store(p930, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 339)

	Store(p931, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 340)

	Store(p932, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 341)

	Store(p933, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 342)

	Store(p934, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 343)

	Store(p935, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 344)

	Store(p936, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 345)

	Store(p937, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 346)

	Store(p938, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 347)

	Store(p939, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 348)

	Store(p93a, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 349)

	Store(p93b, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 350)

	Store(p93c, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 351)

	Store(p93d, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 352)

	Store(p93e, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 353)

	Store(p93f, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 354)

	Store(p940, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 355)

	Store(p941, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 356)

	Store(p942, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 357)

	Store(p943, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 358)

	Store(p944, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 359)

	Store(p945, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 360)

	Store(p946, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 361)

	Store(p947, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 362)

	Store(p948, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 363)

	Store(p949, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 364)

	Store(p94a, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 365)

	Store(p94b, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 366)

	Store(p94c, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 367)

	Store(p94d, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 368)

	Store(p94e, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 369)

	Store(p94f, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 370)

	Store(p950, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 371)

	Store(p951, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 372)

	Store(p952, Local7)
	Store(RefOf(Local7), Local0)
	m1a0(Local0, c00c, Ones, 373)

	m1a6()

	return
}

// m16c,m193
// arg1 - writing mode
Method(m172, 2)
{
	if (y100) {
		ts00("m172")
	} else {
		Store("m172", Debug)
	}

	// T5:CR0-CR5,CR14

	// Uninitialized Local

	if (Arg0) {
		Store(0, Local7)
	}
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 589)) {
		m1a0(Local0, c008, Ones, 590)
	}

	// Computational Data

	Store(i900, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 591)) {
		m1a2(Local0, c009, 0, 0, c009, 0xfe7cb391d65a0000, 592)
	}

	Store(i901, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 593)) {
		m1a2(Local0, c009, 0, 0, c009, 0xc1790001, 594)
	}

	Store(s900, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 595)) {
		m1a2(Local0, c00a, 0, 0, c00a, "12340002", 596)
	}

	Store(s901, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 597)) {
		m1a2(Local0, c00a, 0, 0, c00a, "qwrtyu0003", 598)
	}

	Store(b900, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 599)) {
		m1a2(Local0, c00b, 0, 0, c00b, Buffer() {0xb0,0xb1,0xb2,0xb3,0xb4}, 600)
	}

	// Not Computational Data

	// Package

	Store(p953, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 1010)) {
		m1a2(Local0, c00c, 1, 0, c009, 0xabcd0018, 1011)
	}

	if (arg1) {

		// Data are unchanged, because writings were made
		// into the new objects assosiated with Local7.

		m1a6()
		return
	}

	// Computational Data (Field Unit and Buffer Field)

	Store(f900, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 601)) {
		m1a2(Local0, c009, 0, 0, c009, 0, 602)
	}

	Store(bn90, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 603)) {
		m1a2(Local0, c009, 0, 0, c009, 0, 604)
	}

	Store(if90, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 605)) {
		m1a2(Local0, c009, 0, 0, c009, 0, 606)
	}

	Store(bf90, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 607)) {
		m1a2(Local0, c009, 0, 0, c009, 0xb0, 608)
	}

	// Elements of Package are Uninitialized

	Store(p900, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 616)

	// Elements of Package are Computational Data

	Store(p901, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 617)) {
		m1a2(Local0, c00c, 1, 0, c009, 0xabcd0004, 618)
		m1a2(Local0, c00c, 1, 1, c009, 0x1122334455660005, 619)
	}

	Store(p902, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 620)) {
		m1a2(Local0, c00c, 1, 0, c00a, "12340006", 621)
		m1a2(Local0, c00c, 1, 1, c00a, "q1w2e3r4t5y6u7i80007", 622)
	}

	Store(p903, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 623)) {
		m1a2(Local0, c00c, 1, 0, c00a, "qwrtyuiop0008", 624)
		m1a2(Local0, c00c, 1, 1, c00a, "1234567890abdef0250009", 625)
	}

	Store(p904, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 626)) {
		m1a2(Local0, c00c, 1, 0, c00b, Buffer() {0xb5,0xb6,0xb7}, 627)
	}

	Store(p905, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 628)) {
		m1a2(Local0, c00c, 2, 0, c009, 0xabc000a, 629)
		m1a2(Local0, c00c, 2, 1, c00a, "0xabc000b", 630)
	}

	Store(p906, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 631)) {
		m1a2(Local0, c00c, 2, 0, c00a, "abc000d", 632)
	}

	Store(p907, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 633)) {
		m1a2(Local0, c00c, 2, 0, c00a, "aqwevbgnm000e", 634)
	}

	Store(p908, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 635)) {
		m1a2(Local0, c00c, 2, 0, c00b, Buffer() {0xba,0xbb,0xbc,0xbd,0xbe}, 636)
	}

	Store(p909, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 637)) {
		m1a2(Local0, c00c, 3, 0, c009, 0xabc000f, 638)
	}

	Store(p90a, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 639)) {
		m1a2(Local0, c00c, 3, 0, c00a, "12340010", 640)
	}

	Store(p90b, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 641)) {
		m1a2(Local0, c00c, 3, 0, c00a, "zxswefas0011", 642)
	}

	Store(p90c, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 643)) {
		m1a2(Local0, c00c, 3, 0, c00b, Buffer() {0xbf,0xc0,0xc1}, 644)
	}

	Store(p90d, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 645)) {
		m1a2(Local0, c00c, 1, 0, c009, 0xfe7cb391d65a0000, 646)
	}

	Store(p90e, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 647)) {
		m1a2(Local0, c00c, 1, 0, c009, 0xc1790001, 648)
	}

	Store(p90f, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 649)) {
		m1a2(Local0, c00c, 1, 0, c00a, "12340002", 650)
	}

	Store(p910, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 651)) {
		m1a2(Local0, c00c, 1, 0, c00a, "qwrtyu0003", 652)
	}

	Store(p911, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	if (m1a4(Local1, 653)) {
		m1a2(Local0, c00c, 1, 0, c00b, Buffer() {0xb0,0xb1,0xb2,0xb3,0xb4}, 654)
	}

	if (y118) {
		Store(p912, Local7)
		Store(CondRefOf(Local7, Local0), Local1)
		if (m1a4(Local1, 655)) {
			m1a2(Local0, c00c, 1, 0, c00d, 0, 656)
		}

		Store(p913, Local7)
		Store(CondRefOf(Local7, Local0), Local1)
		if (m1a4(Local1, 657)) {
			m1a2(Local0, c00c, 1, 0, c00d, 0, 658)
		}

		Store(p914, Local7)
		Store(CondRefOf(Local7, Local0), Local1)
		if (m1a4(Local1, 659)) {
			m1a2(Local0, c00c, 1, 0, c00d, 0, 660)
		}

		Store(p915, Local7)
		Store(CondRefOf(Local7, Local0), Local1)
		if (m1a4(Local1, 661)) {
			m1a2(Local0, c00c, 1, 0, c016, 0xb0, 662)
		}
	}

	// Elements of Package are NOT Computational Data

	Store(p916, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 663)

	Store(p917, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 664)

	Store(p918, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 6655)

	Store(p919, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 666)

	Store(p91a, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 667)

	Store(p91b, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 668)

	Store(p91c, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 669)

	// Elements of Package are Methods

	Store(p91d, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 670)

	Store(p91e, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 671)

	Store(p91f, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 672)

	Store(p920, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 673)

	Store(p921, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 674)

	Store(p922, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 675)

	Store(p923, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 676)

	Store(p924, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 677)

	Store(p925, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 678)

	Store(p926, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 679)

	Store(p927, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 680)

	Store(p928, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 681)

	Store(p929, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 682)

	Store(p92a, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 683)

	Store(p92b, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 684)

	Store(p92c, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 685)

	Store(p92d, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 686)

	Store(p92e, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 687)

	Store(p92f, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 688)

	Store(p930, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 689)

	Store(p931, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 690)

	Store(p932, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 691)

	Store(p933, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 692)

	Store(p934, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 693)

	Store(p935, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 694)

	Store(p936, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 695)

	Store(p937, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 696)

	Store(p938, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 697)

	Store(p939, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 698)

	Store(p93a, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 699)

	Store(p93b, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 700)

	Store(p93c, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 701)

	Store(p93d, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 702)

	Store(p93e, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 703)

	Store(p93f, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 704)

	Store(p940, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 705)

	Store(p941, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 706)

	Store(p942, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 707)

	Store(p943, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 708)

	Store(p944, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 709)

	Store(p945, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 710)

	Store(p946, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 711)

	Store(p947, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 712)

	Store(p948, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 713)

	Store(p949, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 714)

	Store(p94a, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 715)

	Store(p94b, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 716)

	Store(p94c, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 717)

	Store(p94d, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 718)

	Store(p94e, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 719)

	Store(p94f, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 720)

	Store(p950, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 721)

	Store(p951, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 722)

	Store(p952, Local7)
	Store(CondRefOf(Local7, Local0), Local1)
	m1a0(Local0, c00c, Local1, 723)

	m1a6()

	return
}

Method(m175, 3)
{
	Store(z078, c081)		// absolute index of file initiating the checking
	Store(1, c089)		// flag of Reference, object otherwise

	if (arg0) {
		m170()
	}
	if (arg1) {
		m171(0, c083)
	}
	if (arg2) {
		m172(0, c083)
	}
}

// The mode with the chain of references to LocalX
Method(m176)
{
	Store(1, c084)	// run verification of references (reading)
	Store(1, c085)	// create the chain of references to LocalX, then dereference them

	Store("The mode with the chain of references to LocalX:", Debug)

	m175(1, 1, 1)
}

// Run-method
Method(REF2)
{
	Store("TEST: REF2, References", Debug)

	Store("REF2", c080)	// name of test
	Store(0, c082)		// flag of test of exceptions
	Store(0, c083)		// run verification of references (write/read)
	Store(0, c086)		// flag, run test till the first error
	Store(1, c087)		// apply DeRefOf to ArgX-ObjectReference

	m176()
}
