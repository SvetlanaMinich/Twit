; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [227 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [454 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 71
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 226
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 84
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 160
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 102
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 119
	i64 358537122123149260, ; 6: TwitterAnal.Persistense => 0x4f9c79ceaf0efcc => 129
	i64 560278790331054453, ; 7: System.Reflection.Primitives => 0x7c6829760de3975 => 184
	i64 670564002081277297, ; 8: Microsoft.Identity.Client.dll => 0x94e526837380571 => 72
	i64 750875890346172408, ; 9: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 211
	i64 799765834175365804, ; 10: System.ComponentModel.dll => 0xb1956c9f18442ac => 142
	i64 805302231655005164, ; 11: hu\Microsoft.Maui.Controls.resources.dll => 0xb2d021ceea03bec => 22
	i64 870603111519317375, ; 12: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 89
	i64 872800313462103108, ; 13: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 107
	i64 937459790420187032, ; 14: Microsoft.SqlServer.Server.dll => 0xd0286b667351798 => 86
	i64 1010599046655515943, ; 15: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 184
	i64 1060858978308751610, ; 16: Azure.Core.dll => 0xeb8ed9ebee080fa => 45
	i64 1120440138749646132, ; 17: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 124
	i64 1150430735170971895, ; 18: ru\Microsoft.Data.SqlClient.resources => 0xff726a88c8ea8f7 => 7
	i64 1268860745194512059, ; 19: System.Drawing.dll => 0x119be62002c19ebb => 153
	i64 1278906455852160409, ; 20: Microsoft.EntityFrameworkCore.SqlServer.dll => 0x11bf96a54a059599 => 59
	i64 1301485588176585670, ; 21: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 88
	i64 1332369539331056316, ; 22: MediatR.dll => 0x127d87096d60e2bc => 50
	i64 1369545283391376210, ; 23: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 115
	i64 1404195534211153682, ; 24: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 158
	i64 1476839205573959279, ; 25: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 168
	i64 1486715745332614827, ; 26: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 81
	i64 1513467482682125403, ; 27: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 225
	i64 1518315023656898250, ; 28: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 90
	i64 1537168428375924959, ; 29: System.Threading.Thread.dll => 0x15551e8a954ae0df => 211
	i64 1624659445732251991, ; 30: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 99
	i64 1628611045998245443, ; 31: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 112
	i64 1672383392659050004, ; 32: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 54
	i64 1727335837760004386, ; 33: TwitterAnal.Persistense.dll => 0x17f8bacae97ca122 => 129
	i64 1735388228521408345, ; 34: System.Net.Mail.dll => 0x181556663c69b759 => 165
	i64 1743969030606105336, ; 35: System.Memory.dll => 0x1833d297e88f2af8 => 163
	i64 1767386781656293639, ; 36: System.Private.Uri.dll => 0x188704e9f5582107 => 179
	i64 1795316252682057001, ; 37: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 98
	i64 1825687700144851180, ; 38: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 185
	i64 1835311033149317475, ; 39: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 16
	i64 1836611346387731153, ; 40: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 119
	i64 1865037103900624886, ; 41: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 52
	i64 1875417405349196092, ; 42: System.Drawing.Primitives => 0x1a06d2319b6c713c => 152
	i64 1881198190668717030, ; 43: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 38
	i64 1920760634179481754, ; 44: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 82
	i64 1930726298510463061, ; 45: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 49
	i64 1972385128188460614, ; 46: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 196
	i64 1981742497975770890, ; 47: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 111
	i64 2040001226662520565, ; 48: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 210
	i64 2102659300918482391, ; 49: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 152
	i64 2165725771938924357, ; 50: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 100
	i64 2192948757939169934, ; 51: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 56
	i64 2262844636196693701, ; 52: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 107
	i64 2287834202362508563, ; 53: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 134
	i64 2316229908869312383, ; 54: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x2024e6d4884a6f7f => 78
	i64 2329709569556905518, ; 55: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 110
	i64 2335503487726329082, ; 56: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 206
	i64 2470498323731680442, ; 57: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 103
	i64 2497223385847772520, ; 58: System.Runtime => 0x22a7eb7046413568 => 193
	i64 2547086958574651984, ; 59: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 97
	i64 2554797818648757682, ; 60: System.Runtime.Caching.dll => 0x23747714858085b2 => 95
	i64 2602673633151553063, ; 61: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 37
	i64 2612152650457191105, ; 62: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 79
	i64 2624866290265602282, ; 63: mscorlib.dll => 0x246d65fbde2db8ea => 221
	i64 2632269733008246987, ; 64: System.Net.NameResolution => 0x2487b36034f808cb => 166
	i64 2656907746661064104, ; 65: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 65
	i64 2662981627730767622, ; 66: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 12
	i64 2789714023057451704, ; 67: Microsoft.IdentityModel.JsonWebTokens.dll => 0x26b70e1f9943eab8 => 75
	i64 2815524396660695947, ; 68: System.Security.AccessControl => 0x2712c0857f68238b => 194
	i64 2851879596360956261, ; 69: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 91
	i64 2895129759130297543, ; 70: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 17
	i64 2934188502315225119, ; 71: fr\Microsoft.Data.SqlClient.resources.dll => 0x28b854e59888d01f => 2
	i64 3004558106879253741, ; 72: ja\Microsoft.Data.SqlClient.resources => 0x29b255adeb8edced => 4
	i64 3017704767998173186, ; 73: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 124
	i64 3106852385031680087, ; 74: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 192
	i64 3110390492489056344, ; 75: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 198
	i64 3289520064315143713, ; 76: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 109
	i64 3311221304742556517, ; 77: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 175
	i64 3325875462027654285, ; 78: System.Runtime.Numerics => 0x2e27e21c8958b48d => 188
	i64 3328853167529574890, ; 79: System.Net.Sockets.dll => 0x2e327651a008c1ea => 172
	i64 3344514922410554693, ; 80: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 126
	i64 3402534845034375023, ; 81: System.IdentityModel.Tokens.Jwt.dll => 0x2f383b6a0629a76f => 93
	i64 3429672777697402584, ; 82: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 84
	i64 3494946837667399002, ; 83: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 62
	i64 3522470458906976663, ; 84: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 120
	i64 3523004241079211829, ; 85: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 61
	i64 3531994851595924923, ; 86: System.Numerics => 0x31042a9aade235bb => 176
	i64 3551103847008531295, ; 87: System.Private.CoreLib.dll => 0x31480e226177735f => 223
	i64 3567343442040498961, ; 88: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 32
	i64 3571415421602489686, ; 89: System.Runtime.dll => 0x319037675df7e556 => 193
	i64 3638003163729360188, ; 90: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 63
	i64 3647754201059316852, ; 91: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 217
	i64 3655542548057982301, ; 92: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 62
	i64 3670755665060182523, ; 93: es\Microsoft.Data.SqlClient.resources.dll => 0x32f124d4312a39fb => 1
	i64 3716579019761409177, ; 94: netstandard.dll => 0x3393f0ed5c8c5c99 => 222
	i64 3727469159507183293, ; 95: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 118
	i64 3869221888984012293, ; 96: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 68
	i64 3890352374528606784, ; 97: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 82
	i64 3919223565570527920, ; 98: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 199
	i64 3933965368022646939, ; 99: System.Net.Requests => 0x369840a8bfadc09b => 169
	i64 3966267475168208030, ; 100: System.Memory => 0x370b03412596249e => 163
	i64 4009997192427317104, ; 101: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 191
	i64 4070326265757318011, ; 102: da\Microsoft.Maui.Controls.resources.dll => 0x387cb42c56683b7b => 13
	i64 4073500526318903918, ; 103: System.Private.Xml.dll => 0x3887fb25779ae26e => 181
	i64 4073631083018132676, ; 104: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 80
	i64 4120493066591692148, ; 105: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 43
	i64 4154383907710350974, ; 106: System.ComponentModel => 0x39a7562737acb67e => 142
	i64 4167269041631776580, ; 107: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 212
	i64 4168469861834746866, ; 108: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 195
	i64 4187479170553454871, ; 109: System.Linq.Expressions => 0x3a1cea1e912fa117 => 160
	i64 4205801962323029395, ; 110: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 141
	i64 4321865999928413850, ; 111: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 92
	i64 4337444564132831293, ; 112: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 87
	i64 4360412976914417659, ; 113: tr\Microsoft.Maui.Controls.resources.dll => 0x3c834c8002fcc7fb => 38
	i64 4373617458794931033, ; 114: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 159
	i64 4477672992252076438, ; 115: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 215
	i64 4513320955448359355, ; 116: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 57
	i64 4612482779465751747, ; 117: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 56
	i64 4672453897036726049, ; 118: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 158
	i64 4716677666592453464, ; 119: System.Xml.XmlSerializer => 0x417501590542f358 => 219
	i64 4743821336939966868, ; 120: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 139
	i64 4794310189461587505, ; 121: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 97
	i64 4795410492532947900, ; 122: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 120
	i64 4809057822547766521, ; 123: System.Drawing => 0x42bd349c3145ecf9 => 153
	i64 4814660307502931973, ; 124: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 166
	i64 4853321196694829351, ; 125: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 187
	i64 4871824391508510238, ; 126: nb\Microsoft.Maui.Controls.resources.dll => 0x439c3278d7f2c61e => 28
	i64 4953714692329509532, ; 127: sv\Microsoft.Maui.Controls.resources.dll => 0x44bf21444aef129c => 36
	i64 5103417709280584325, ; 128: System.Collections.Specialized => 0x46d2fb5e161b6285 => 137
	i64 5129462924058778861, ; 129: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 54
	i64 5182934613077526976, ; 130: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 137
	i64 5203618020066742981, ; 131: Xamarin.Essentials => 0x4836f704f0e652c5 => 123
	i64 5278787618751394462, ; 132: System.Net.WebClient.dll => 0x4942055efc68329e => 173
	i64 5290786973231294105, ; 133: System.Runtime.Loader => 0x496ca6b869b72699 => 187
	i64 5423376490970181369, ; 134: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 185
	i64 5471532531798518949, ; 135: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 36
	i64 5507995362134886206, ; 136: System.Core.dll => 0x4c705499688c873e => 144
	i64 5522859530602327440, ; 137: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 39
	i64 5570799893513421663, ; 138: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 155
	i64 5573260873512690141, ; 139: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 202
	i64 5650097808083101034, ; 140: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 196
	i64 5692067934154308417, ; 141: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 122
	i64 5979151488806146654, ; 142: System.Formats.Asn1 => 0x52fa3699a489d25e => 154
	i64 5984759512290286505, ; 143: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 200
	i64 6183170893902868313, ; 144: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 87
	i64 6200764641006662125, ; 145: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 33
	i64 6222399776351216807, ; 146: System.Text.Json.dll => 0x565a67a0ffe264a7 => 207
	i64 6251069312384999852, ; 147: System.Transactions.Local => 0x56c0426b870da1ac => 214
	i64 6278736998281604212, ; 148: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 178
	i64 6284145129771520194, ; 149: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 182
	i64 6300676701234028427, ; 150: es\Microsoft.Maui.Controls.resources.dll => 0x57708013cda25f8b => 16
	i64 6357457916754632952, ; 151: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 44
	i64 6401687960814735282, ; 152: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 110
	i64 6471714727257221498, ; 153: fi\Microsoft.Maui.Controls.resources.dll => 0x59d026417dd4a97a => 17
	i64 6478287442656530074, ; 154: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 21
	i64 6504860066809920875, ; 155: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 100
	i64 6548213210057960872, ; 156: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 106
	i64 6560151584539558821, ; 157: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 70
	i64 6617685658146568858, ; 158: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 204
	i64 6743165466166707109, ; 159: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 29
	i64 6786606130239981554, ; 160: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 150
	i64 6814185388980153342, ; 161: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 218
	i64 6832506761347760515, ; 162: ru\Microsoft.Data.SqlClient.resources.dll => 0x5ed1f0b303968183 => 7
	i64 6876862101832370452, ; 163: System.Xml.Linq => 0x5f6f85a57d108914 => 216
	i64 6894844156784520562, ; 164: System.Numerics.Vectors => 0x5faf683aead1ad72 => 175
	i64 7083547580668757502, ; 165: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 180
	i64 7270811800166795866, ; 166: System.Linq => 0x64e71ccf51a90a5a => 162
	i64 7316205155833392065, ; 167: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 132
	i64 7348123982286201829, ; 168: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 94
	i64 7377312882064240630, ; 169: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 141
	i64 7488575175965059935, ; 170: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 216
	i64 7489048572193775167, ; 171: System.ObjectModel => 0x67ee71ff6b419e3f => 177
	i64 7496222613193209122, ; 172: System.IdentityModel.Tokens.Jwt => 0x6807eec000a1b522 => 93
	i64 7592577537120840276, ; 173: System.Diagnostics.Process => 0x695e410af5b2aa54 => 147
	i64 7637365915383206639, ; 174: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 123
	i64 7654504624184590948, ; 175: System.Net.Http => 0x6a3a4366801b8264 => 164
	i64 7694700312542370399, ; 176: System.Net.Mail => 0x6ac9112a7e2cda5f => 165
	i64 7714652370974252055, ; 177: System.Private.CoreLib => 0x6b0ff375198b9c17 => 223
	i64 7735176074855944702, ; 178: Microsoft.CSharp => 0x6b58dda848e391fe => 131
	i64 7735352534559001595, ; 179: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 125
	i64 7742555799473854801, ; 180: it\Microsoft.Maui.Controls.resources.dll => 0x6b73157a51479951 => 24
	i64 7791074099216502080, ; 181: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 157
	i64 7793763988543076423, ; 182: it\Microsoft.Data.SqlClient.resources.dll => 0x6c29030df0577847 => 3
	i64 7836164640616011524, ; 183: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 99
	i64 7886756138387249641, ; 184: pt-BR\Microsoft.Data.SqlClient.resources.dll => 0x6d7362ec0ab419e9 => 6
	i64 7972383140441761405, ; 185: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 60
	i64 7975724199463739455, ; 186: sk\Microsoft.Maui.Controls.resources.dll => 0x6eaf76e6f785e03f => 35
	i64 8064050204834738623, ; 187: System.Collections.dll => 0x6fe942efa61731bf => 138
	i64 8073408692540562791, ; 188: ja\Microsoft.Data.SqlClient.resources.dll => 0x700a826e5d6e5d67 => 4
	i64 8083354569033831015, ; 189: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 109
	i64 8087206902342787202, ; 190: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 146
	i64 8108129031893776750, ; 191: ko\Microsoft.Maui.Controls.resources.dll => 0x7085dc65530f796e => 26
	i64 8167236081217502503, ; 192: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 224
	i64 8185542183669246576, ; 193: System.Collections => 0x7198e33f4794aa70 => 138
	i64 8234598844743906698, ; 194: Microsoft.Identity.Client.Extensions.Msal.dll => 0x72472c0540cd758a => 73
	i64 8246048515196606205, ; 195: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 85
	i64 8264926008854159966, ; 196: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 147
	i64 8368701292315763008, ; 197: System.Security.Cryptography => 0x7423997c6fd56140 => 202
	i64 8386351099740279196, ; 198: zh-HK\Microsoft.Maui.Controls.resources.dll => 0x74624de475b9d19c => 41
	i64 8400357532724379117, ; 199: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 117
	i64 8410671156615598628, ; 200: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 183
	i64 8513291706828295435, ; 201: Microsoft.SqlServer.Server => 0x762549b3b6c78d0b => 86
	i64 8518412311883997971, ; 202: System.Collections.Immutable => 0x76377add7c28e313 => 135
	i64 8563666267364444763, ; 203: System.Private.Uri => 0x76d841191140ca5b => 179
	i64 8599632406834268464, ; 204: CommunityToolkit.Maui => 0x7758081c784b4930 => 47
	i64 8626175481042262068, ; 205: Java.Interop => 0x77b654e585b55834 => 224
	i64 8638972117149407195, ; 206: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 131
	i64 8639588376636138208, ; 207: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 116
	i64 8677882282824630478, ; 208: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 31
	i64 8708565345795569651, ; 209: MediatR.Contracts => 0x78db0a0ac36bf7f3 => 51
	i64 8725526185868997716, ; 210: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 146
	i64 8941376889969657626, ; 211: System.Xml.XDocument => 0x7c1626e87187471a => 218
	i64 8954753533646919997, ; 212: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 190
	i64 8955323522379913726, ; 213: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 72
	i64 9045785047181495996, ; 214: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 41
	i64 9052662452269567435, ; 215: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 77
	i64 9111603110219107042, ; 216: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 61
	i64 9138683372487561558, ; 217: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 198
	i64 9250544137016314866, ; 218: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 55
	i64 9312692141327339315, ; 219: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 122
	i64 9324707631942237306, ; 220: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 98
	i64 9363564275759486853, ; 221: el\Microsoft.Maui.Controls.resources.dll => 0x81f21019382e9785 => 15
	i64 9427266486299436557, ; 222: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 76
	i64 9500688326720985260, ; 223: Microsoft.EntityFrameworkCore.SqlServer => 0x83d939b243e798ac => 59
	i64 9513793942805897923, ; 224: zh-Hans\Microsoft.Data.SqlClient.resources => 0x8407c92f4b3562c3 => 8
	i64 9551379474083066910, ; 225: uk\Microsoft.Maui.Controls.resources.dll => 0x848d5106bbadb41e => 39
	i64 9650158550865574924, ; 226: Microsoft.Extensions.Configuration.Json => 0x85ec4012c28a7c0c => 64
	i64 9659729154652888475, ; 227: System.Text.RegularExpressions => 0x860e407c9991dd9b => 208
	i64 9662334977499516867, ; 228: System.Numerics.dll => 0x8617827802b0cfc3 => 176
	i64 9667360217193089419, ; 229: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 148
	i64 9678050649315576968, ; 230: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 103
	i64 9702891218465930390, ; 231: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 136
	i64 9773637193738963987, ; 232: ca\Microsoft.Maui.Controls.resources.dll => 0x87a2ef3ea85b4c13 => 11
	i64 9808709177481450983, ; 233: Mono.Android.dll => 0x881f890734e555e7 => 226
	i64 9819168441846169364, ; 234: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 77
	i64 9864956466380592553, ; 235: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 58
	i64 9901312892585205432, ; 236: ko\Microsoft.Data.SqlClient.resources.dll => 0x8968879dcc895eb8 => 5
	i64 9933555792566666578, ; 237: System.Linq.Queryable.dll => 0x89db145cf475c552 => 161
	i64 9956195530459977388, ; 238: Microsoft.Maui => 0x8a2b8315b36616ac => 83
	i64 10038780035334861115, ; 239: System.Net.Http.dll => 0x8b50e941206af13b => 164
	i64 10051358222726253779, ; 240: System.Private.Xml => 0x8b7d990c97ccccd3 => 181
	i64 10089571585547156312, ; 241: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 157
	i64 10092835686693276772, ; 242: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 81
	i64 10143853363526200146, ; 243: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 13
	i64 10209869394718195525, ; 244: nl\Microsoft.Maui.Controls.resources.dll => 0x8db0be1ecb4f7f45 => 29
	i64 10229024438826829339, ; 245: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 106
	i64 10236703004850800690, ; 246: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 171
	i64 10245369515835430794, ; 247: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 183
	i64 10364469296367737616, ; 248: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 182
	i64 10406448008575299332, ; 249: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 126
	i64 10430153318873392755, ; 250: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 104
	i64 10447083246144586668, ; 251: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 52
	i64 10506226065143327199, ; 252: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 11
	i64 10546663366131771576, ; 253: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 190
	i64 10550217021743923606, ; 254: TwitterAnal.Application => 0x9269e67bdc538196 => 127
	i64 10670374202010151210, ; 255: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 132
	i64 10761706286639228993, ; 256: zh-Hant\Microsoft.Maui.Controls.resources.dll => 0x955942d988382841 => 43
	i64 10785150219063592792, ; 257: System.Net.Primitives => 0x95ac8cfb68830758 => 168
	i64 10811915265162633087, ; 258: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 57
	i64 10822644899632537592, ; 259: System.Linq.Queryable => 0x9631c23204ca5ff8 => 161
	i64 10858124219977111934, ; 260: de\Microsoft.Data.SqlClient.resources.dll => 0x96afce7302cd197e => 0
	i64 10880838204485145808, ; 261: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 47
	i64 10889380495983713167, ; 262: Microsoft.Data.SqlClient.dll => 0x971ed9dddf2d1b8f => 53
	i64 10964653383833615866, ; 263: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 151
	i64 11002576679268595294, ; 264: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 69
	i64 11009005086950030778, ; 265: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 83
	i64 11023048688141570732, ; 266: System.Core => 0x98f9bc61168392ac => 144
	i64 11103970607964515343, ; 267: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 22
	i64 11156122287428000958, ; 268: th\Microsoft.Maui.Controls.resources.dll => 0x9ad2821cdcf6dcbe => 37
	i64 11157797727133427779, ; 269: fr\Microsoft.Maui.Controls.resources.dll => 0x9ad875ea9172e843 => 18
	i64 11162124722117608902, ; 270: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 121
	i64 11183417087873056340, ; 271: ko\Microsoft.Data.SqlClient.resources => 0x9b337a96d1b4fe54 => 5
	i64 11220793807500858938, ; 272: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 25
	i64 11226290749488709958, ; 273: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 70
	i64 11340910727871153756, ; 274: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 105
	i64 11341245327015630248, ; 275: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 91
	i64 11347436699239206956, ; 276: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 219
	i64 11369118378396596751, ; 277: de\Microsoft.Data.SqlClient.resources => 0x9dc738edd1b1ba0f => 0
	i64 11398376662953476300, ; 278: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 58
	i64 11448276831755070604, ; 279: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 149
	i64 11485890710487134646, ; 280: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 186
	i64 11517440453979132662, ; 281: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 74
	i64 11518296021396496455, ; 282: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 23
	i64 11529969570048099689, ; 283: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 121
	i64 11530571088791430846, ; 284: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 68
	i64 11597940890313164233, ; 285: netstandard => 0xa0f429ca8d1805c9 => 222
	i64 11691349843442515326, ; 286: TwitterAnal.UI.dll => 0xa24004bd3b35bd7e => 130
	i64 11855031688536399763, ; 287: vi\Microsoft.Maui.Controls.resources.dll => 0xa485888294361f93 => 40
	i64 12011556116648931059, ; 288: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 96
	i64 12040886584167504988, ; 289: System.Net.ServicePoint => 0xa719d28d8e121c5c => 171
	i64 12094367927612810875, ; 290: it\Microsoft.Data.SqlClient.resources => 0xa7d7d38d2c3d267b => 3
	i64 12102847907131387746, ; 291: System.Buffers => 0xa7f5f40c43256f62 => 133
	i64 12135603018318934108, ; 292: TwitterAnal.Domain.dll => 0xa86a52a5e20ef05c => 128
	i64 12145679461940342714, ; 293: System.Text.Json => 0xa88e1f1ebcb62fba => 207
	i64 12198439281774268251, ; 294: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0xa9498fe58c538f5b => 78
	i64 12201331334810686224, ; 295: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 191
	i64 12269460666702402136, ; 296: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 135
	i64 12279246230491828964, ; 297: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 90
	i64 12341818387765915815, ; 298: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 48
	i64 12439275739440478309, ; 299: Microsoft.IdentityModel.JsonWebTokens => 0xaca12f61007bf865 => 75
	i64 12451044538927396471, ; 300: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 108
	i64 12466513435562512481, ; 301: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 113
	i64 12475113361194491050, ; 302: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 44
	i64 12493213219680520345, ; 303: Microsoft.Data.SqlClient => 0xad60cf3b3e458899 => 53
	i64 12517810545449516888, ; 304: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 150
	i64 12538491095302438457, ; 305: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 101
	i64 12550732019250633519, ; 306: System.IO.Compression => 0xae2d28465e8e1b2f => 156
	i64 12559715980857931562, ; 307: TwitterAnal.Domain => 0xae4d1323eed5772a => 128
	i64 12699999919562409296, ; 308: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 148
	i64 12700543734426720211, ; 309: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 102
	i64 12708922737231849740, ; 310: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 205
	i64 12717050818822477433, ; 311: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 192
	i64 12835242264250840079, ; 312: System.IO.Pipes => 0xb21ff0d5d6c0740f => 159
	i64 12843321153144804894, ; 313: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 71
	i64 12859557719246324186, ; 314: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 174
	i64 12989346753972519995, ; 315: ar\Microsoft.Maui.Controls.resources.dll => 0xb4436e0d5ee7c43b => 10
	i64 13005833372463390146, ; 316: pt-BR\Microsoft.Maui.Controls.resources.dll => 0xb47e008b5d99ddc2 => 31
	i64 13068258254871114833, ; 317: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 189
	i64 13081213038863613389, ; 318: TwitterAnal.Application.dll => 0xb589cdf39cac7dcd => 127
	i64 13343850469010654401, ; 319: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 225
	i64 13381594904270902445, ; 320: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 19
	i64 13431476299110033919, ; 321: System.Net.WebClient => 0xba663087f18829ff => 173
	i64 13463706743370286408, ; 322: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 178
	i64 13465488254036897740, ; 323: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 125
	i64 13540124433173649601, ; 324: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 40
	i64 13572454107664307259, ; 325: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 118
	i64 13710614125866346983, ; 326: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 194
	i64 13717397318615465333, ; 327: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 140
	i64 13742054908850494594, ; 328: Azure.Identity => 0xbeb596218df25c82 => 46
	i64 13881769479078963060, ; 329: System.Console.dll => 0xc0a5f3cade5c6774 => 143
	i64 13955418299340266673, ; 330: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 67
	i64 13959074834287824816, ; 331: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 108
	i64 14124974489674258913, ; 332: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 101
	i64 14125464355221830302, ; 333: System.Threading.dll => 0xc407bafdbc707a9e => 213
	i64 14133832980772275001, ; 334: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 55
	i64 14212104595480609394, ; 335: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 197
	i64 14254574811015963973, ; 336: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 205
	i64 14327709162229390963, ; 337: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 201
	i64 14349907877893689639, ; 338: ro\Microsoft.Maui.Controls.resources.dll => 0xc7251d2f956ed127 => 33
	i64 14461014870687870182, ; 339: System.Net.Requests.dll => 0xc8afd8683afdece6 => 169
	i64 14464374589798375073, ; 340: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 34
	i64 14491877563792607819, ; 341: zh-Hans\Microsoft.Maui.Controls.resources.dll => 0xc91d7ddcee4fca4b => 42
	i64 14533141687369379279, ; 342: zh-Hant\Microsoft.Data.SqlClient.resources => 0xc9b0175d6212adcf => 9
	i64 14551742072151931844, ; 343: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 206
	i64 14556034074661724008, ; 344: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 48
	i64 14561513370130550166, ; 345: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 200
	i64 14610046442689856844, ; 346: cs\Microsoft.Maui.Controls.resources.dll => 0xcac14fd5107d054c => 12
	i64 14622043554576106986, ; 347: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 189
	i64 14648804764802849406, ; 348: Azure.Identity.dll => 0xcb4b0252261f9a7e => 46
	i64 14669215534098758659, ; 349: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 65
	i64 14690985099581930927, ; 350: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 215
	i64 14705122255218365489, ; 351: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 26
	i64 14735017007120366644, ; 352: ja\Microsoft.Maui.Controls.resources.dll => 0xcc7d4be604bfbc34 => 25
	i64 14744092281598614090, ; 353: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 42
	i64 14832630590065248058, ; 354: System.Security.Claims => 0xcdd816ef5d6e873a => 195
	i64 14852515768018889994, ; 355: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 105
	i64 14904040806490515477, ; 356: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 10
	i64 14912225920358050525, ; 357: System.Security.Principal.Windows => 0xcef2de7759506add => 203
	i64 14935719434541007538, ; 358: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 204
	i64 14954917835170835695, ; 359: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 66
	i64 14984936317414011727, ; 360: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 174
	i64 14987728460634540364, ; 361: System.IO.Compression.dll => 0xcfff1ba06622494c => 156
	i64 15015154896917945444, ; 362: System.Net.Security.dll => 0xd0608bd33642dc64 => 170
	i64 15034895319680518961, ; 363: TwitterAnal.UI => 0xd0a6ada28cbd8b31 => 130
	i64 15076659072870671916, ; 364: System.ObjectModel.dll => 0xd13b0d8c1620662c => 177
	i64 15098643813271943940, ; 365: zh-Hant\Microsoft.Data.SqlClient.resources.dll => 0xd189288d58393b04 => 9
	i64 15111608613780139878, ; 366: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 27
	i64 15115185479366240210, ; 367: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 155
	i64 15133485256822086103, ; 368: System.Linq.dll => 0xd204f0a9127dd9d7 => 162
	i64 15138356091203993725, ; 369: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 74
	i64 15203009853192377507, ; 370: pt\Microsoft.Maui.Controls.resources.dll => 0xd2fbf0e9984b94a3 => 32
	i64 15227001540531775957, ; 371: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 63
	i64 15370334346939861994, ; 372: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 104
	i64 15383240894167415497, ; 373: System.Memory.Data => 0xd57c4016df1c7ac9 => 94
	i64 15391712275433856905, ; 374: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 66
	i64 15440042012048828209, ; 375: pt-BR\Microsoft.Data.SqlClient.resources => 0xd6460c67b5472731 => 6
	i64 15475196252089753159, ; 376: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 92
	i64 15527772828719725935, ; 377: System.Console => 0xd77dbb1e38cd3d6f => 143
	i64 15536481058354060254, ; 378: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 14
	i64 15541854775306130054, ; 379: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 201
	i64 15557562860424774966, ; 380: System.Net.Sockets => 0xd7e790fe7a6dc536 => 172
	i64 15582737692548360875, ; 381: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 112
	i64 15609085926864131306, ; 382: System.dll => 0xd89e9cf3334914ea => 220
	i64 15620595871140898079, ; 383: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 67
	i64 15661133872274321916, ; 384: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 217
	i64 15783653065526199428, ; 385: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 15
	i64 15827202283623377193, ; 386: Microsoft.Extensions.Configuration.Json.dll => 0xdba5849eef9f6929 => 64
	i64 15847085070278954535, ; 387: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 209
	i64 15928521404965645318, ; 388: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 80
	i64 15937190497610202713, ; 389: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 197
	i64 15963349826457351533, ; 390: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 210
	i64 16018552496348375205, ; 391: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 167
	i64 16056281320585338352, ; 392: ru\Microsoft.Maui.Controls.resources.dll => 0xded35eca8f3a9df0 => 34
	i64 16154507427712707110, ; 393: System => 0xe03056ea4e39aa26 => 220
	i64 16219561732052121626, ; 394: System.Net.Security => 0xe1177575db7c781a => 170
	i64 16288847719894691167, ; 395: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 28
	i64 16321164108206115771, ; 396: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 69
	i64 16337011941688632206, ; 397: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 203
	i64 16454459195343277943, ; 398: System.Net.NetworkInformation => 0xe459fb756d988f77 => 167
	i64 16495551891359062599, ; 399: MediatR.Contracts.dll => 0xe4ebf90c4a7ada47 => 51
	i64 16540916324946374984, ; 400: fr\Microsoft.Data.SqlClient.resources => 0xe58d23c28fe37148 => 2
	i64 16648892297579399389, ; 401: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 49
	i64 16649148416072044166, ; 402: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 85
	i64 16677317093839702854, ; 403: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 117
	i64 16755018182064898362, ; 404: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 88
	i64 16765015072123548030, ; 405: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 149
	i64 16803648858859583026, ; 406: ms\Microsoft.Maui.Controls.resources.dll => 0xe9328d9b8ab93632 => 27
	i64 16833383113903931215, ; 407: mscorlib => 0xe99c30c1484d7f4f => 221
	i64 16856067890322379635, ; 408: System.Data.Common.dll => 0xe9ecc87060889373 => 145
	i64 16890310621557459193, ; 409: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 208
	i64 16942731696432749159, ; 410: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 35
	i64 16945858842201062480, ; 411: Azure.Core => 0xeb2bc8d57f4e7c50 => 45
	i64 16998075588627545693, ; 412: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 115
	i64 17008137082415910100, ; 413: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 136
	i64 17031351772568316411, ; 414: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 114
	i64 17062143951396181894, ; 415: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 140
	i64 17118171214553292978, ; 416: System.Threading.Channels => 0xed8ff6060fc420b2 => 209
	i64 17137864900836977098, ; 417: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 79
	i64 17161234552559372542, ; 418: zh-Hans\Microsoft.Data.SqlClient.resources.dll => 0xee28f3e6c47608fe => 8
	i64 17187273293601214786, ; 419: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 139
	i64 17197986060146327831, ; 420: Microsoft.Identity.Client.Extensions.Msal => 0xeeab8533ef244117 => 73
	i64 17202182880784296190, ; 421: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 199
	i64 17203614576212522419, ; 422: pl\Microsoft.Maui.Controls.resources.dll => 0xeebf844ef3e135b3 => 30
	i64 17230721278011714856, ; 423: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 180
	i64 17234219099804750107, ; 424: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 214
	i64 17260702271250283638, ; 425: System.Data.Common => 0xef8a5543bba6bc76 => 145
	i64 17310278548634113468, ; 426: hi\Microsoft.Maui.Controls.resources.dll => 0xf03a76a04e6695bc => 20
	i64 17333249706306540043, ; 427: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 151
	i64 17342750010158924305, ; 428: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 20
	i64 17371436720558481852, ; 429: System.Runtime.Caching => 0xf113bda8d710a1bc => 95
	i64 17514990004910432069, ; 430: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 18
	i64 17523946658117960076, ; 431: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 96
	i64 17558788868712318792, ; 432: es\Microsoft.Data.SqlClient.resources => 0xf3ad597215ae4748 => 1
	i64 17623389608345532001, ; 433: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 30
	i64 17704177640604968747, ; 434: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 113
	i64 17710060891934109755, ; 435: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 111
	i64 17712670374920797664, ; 436: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 186
	i64 17777860260071588075, ; 437: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 188
	i64 17790600151040787804, ; 438: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 76
	i64 17827813215687577648, ; 439: hr\Microsoft.Maui.Controls.resources.dll => 0xf7691da9f3129030 => 21
	i64 17838668724098252521, ; 440: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 133
	i64 17942426894774770628, ; 441: de\Microsoft.Maui.Controls.resources.dll => 0xf9004e329f771bc4 => 14
	i64 18017743553296241350, ; 442: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 60
	i64 18025913125965088385, ; 443: System.Threading => 0xfa28e87b91334681 => 213
	i64 18121036031235206392, ; 444: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 114
	i64 18125049892544899879, ; 445: MediatR => 0xfb891cd8bd5eeb27 => 50
	i64 18146411883821974900, ; 446: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 154
	i64 18225059387460068507, ; 447: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 212
	i64 18245806341561545090, ; 448: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 134
	i64 18305135509493619199, ; 449: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 116
	i64 18324163916253801303, ; 450: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 24
	i64 18342408478508122430, ; 451: id\Microsoft.Maui.Controls.resources.dll => 0xfe8d53543697013e => 23
	i64 18358161419737137786, ; 452: he\Microsoft.Maui.Controls.resources.dll => 0xfec54a8ba8b6827a => 19
	i64 18370042311372477656 ; 453: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 89
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [454 x i32] [
	i32 71, ; 0
	i32 226, ; 1
	i32 84, ; 2
	i32 160, ; 3
	i32 102, ; 4
	i32 119, ; 5
	i32 129, ; 6
	i32 184, ; 7
	i32 72, ; 8
	i32 211, ; 9
	i32 142, ; 10
	i32 22, ; 11
	i32 89, ; 12
	i32 107, ; 13
	i32 86, ; 14
	i32 184, ; 15
	i32 45, ; 16
	i32 124, ; 17
	i32 7, ; 18
	i32 153, ; 19
	i32 59, ; 20
	i32 88, ; 21
	i32 50, ; 22
	i32 115, ; 23
	i32 158, ; 24
	i32 168, ; 25
	i32 81, ; 26
	i32 225, ; 27
	i32 90, ; 28
	i32 211, ; 29
	i32 99, ; 30
	i32 112, ; 31
	i32 54, ; 32
	i32 129, ; 33
	i32 165, ; 34
	i32 163, ; 35
	i32 179, ; 36
	i32 98, ; 37
	i32 185, ; 38
	i32 16, ; 39
	i32 119, ; 40
	i32 52, ; 41
	i32 152, ; 42
	i32 38, ; 43
	i32 82, ; 44
	i32 49, ; 45
	i32 196, ; 46
	i32 111, ; 47
	i32 210, ; 48
	i32 152, ; 49
	i32 100, ; 50
	i32 56, ; 51
	i32 107, ; 52
	i32 134, ; 53
	i32 78, ; 54
	i32 110, ; 55
	i32 206, ; 56
	i32 103, ; 57
	i32 193, ; 58
	i32 97, ; 59
	i32 95, ; 60
	i32 37, ; 61
	i32 79, ; 62
	i32 221, ; 63
	i32 166, ; 64
	i32 65, ; 65
	i32 12, ; 66
	i32 75, ; 67
	i32 194, ; 68
	i32 91, ; 69
	i32 17, ; 70
	i32 2, ; 71
	i32 4, ; 72
	i32 124, ; 73
	i32 192, ; 74
	i32 198, ; 75
	i32 109, ; 76
	i32 175, ; 77
	i32 188, ; 78
	i32 172, ; 79
	i32 126, ; 80
	i32 93, ; 81
	i32 84, ; 82
	i32 62, ; 83
	i32 120, ; 84
	i32 61, ; 85
	i32 176, ; 86
	i32 223, ; 87
	i32 32, ; 88
	i32 193, ; 89
	i32 63, ; 90
	i32 217, ; 91
	i32 62, ; 92
	i32 1, ; 93
	i32 222, ; 94
	i32 118, ; 95
	i32 68, ; 96
	i32 82, ; 97
	i32 199, ; 98
	i32 169, ; 99
	i32 163, ; 100
	i32 191, ; 101
	i32 13, ; 102
	i32 181, ; 103
	i32 80, ; 104
	i32 43, ; 105
	i32 142, ; 106
	i32 212, ; 107
	i32 195, ; 108
	i32 160, ; 109
	i32 141, ; 110
	i32 92, ; 111
	i32 87, ; 112
	i32 38, ; 113
	i32 159, ; 114
	i32 215, ; 115
	i32 57, ; 116
	i32 56, ; 117
	i32 158, ; 118
	i32 219, ; 119
	i32 139, ; 120
	i32 97, ; 121
	i32 120, ; 122
	i32 153, ; 123
	i32 166, ; 124
	i32 187, ; 125
	i32 28, ; 126
	i32 36, ; 127
	i32 137, ; 128
	i32 54, ; 129
	i32 137, ; 130
	i32 123, ; 131
	i32 173, ; 132
	i32 187, ; 133
	i32 185, ; 134
	i32 36, ; 135
	i32 144, ; 136
	i32 39, ; 137
	i32 155, ; 138
	i32 202, ; 139
	i32 196, ; 140
	i32 122, ; 141
	i32 154, ; 142
	i32 200, ; 143
	i32 87, ; 144
	i32 33, ; 145
	i32 207, ; 146
	i32 214, ; 147
	i32 178, ; 148
	i32 182, ; 149
	i32 16, ; 150
	i32 44, ; 151
	i32 110, ; 152
	i32 17, ; 153
	i32 21, ; 154
	i32 100, ; 155
	i32 106, ; 156
	i32 70, ; 157
	i32 204, ; 158
	i32 29, ; 159
	i32 150, ; 160
	i32 218, ; 161
	i32 7, ; 162
	i32 216, ; 163
	i32 175, ; 164
	i32 180, ; 165
	i32 162, ; 166
	i32 132, ; 167
	i32 94, ; 168
	i32 141, ; 169
	i32 216, ; 170
	i32 177, ; 171
	i32 93, ; 172
	i32 147, ; 173
	i32 123, ; 174
	i32 164, ; 175
	i32 165, ; 176
	i32 223, ; 177
	i32 131, ; 178
	i32 125, ; 179
	i32 24, ; 180
	i32 157, ; 181
	i32 3, ; 182
	i32 99, ; 183
	i32 6, ; 184
	i32 60, ; 185
	i32 35, ; 186
	i32 138, ; 187
	i32 4, ; 188
	i32 109, ; 189
	i32 146, ; 190
	i32 26, ; 191
	i32 224, ; 192
	i32 138, ; 193
	i32 73, ; 194
	i32 85, ; 195
	i32 147, ; 196
	i32 202, ; 197
	i32 41, ; 198
	i32 117, ; 199
	i32 183, ; 200
	i32 86, ; 201
	i32 135, ; 202
	i32 179, ; 203
	i32 47, ; 204
	i32 224, ; 205
	i32 131, ; 206
	i32 116, ; 207
	i32 31, ; 208
	i32 51, ; 209
	i32 146, ; 210
	i32 218, ; 211
	i32 190, ; 212
	i32 72, ; 213
	i32 41, ; 214
	i32 77, ; 215
	i32 61, ; 216
	i32 198, ; 217
	i32 55, ; 218
	i32 122, ; 219
	i32 98, ; 220
	i32 15, ; 221
	i32 76, ; 222
	i32 59, ; 223
	i32 8, ; 224
	i32 39, ; 225
	i32 64, ; 226
	i32 208, ; 227
	i32 176, ; 228
	i32 148, ; 229
	i32 103, ; 230
	i32 136, ; 231
	i32 11, ; 232
	i32 226, ; 233
	i32 77, ; 234
	i32 58, ; 235
	i32 5, ; 236
	i32 161, ; 237
	i32 83, ; 238
	i32 164, ; 239
	i32 181, ; 240
	i32 157, ; 241
	i32 81, ; 242
	i32 13, ; 243
	i32 29, ; 244
	i32 106, ; 245
	i32 171, ; 246
	i32 183, ; 247
	i32 182, ; 248
	i32 126, ; 249
	i32 104, ; 250
	i32 52, ; 251
	i32 11, ; 252
	i32 190, ; 253
	i32 127, ; 254
	i32 132, ; 255
	i32 43, ; 256
	i32 168, ; 257
	i32 57, ; 258
	i32 161, ; 259
	i32 0, ; 260
	i32 47, ; 261
	i32 53, ; 262
	i32 151, ; 263
	i32 69, ; 264
	i32 83, ; 265
	i32 144, ; 266
	i32 22, ; 267
	i32 37, ; 268
	i32 18, ; 269
	i32 121, ; 270
	i32 5, ; 271
	i32 25, ; 272
	i32 70, ; 273
	i32 105, ; 274
	i32 91, ; 275
	i32 219, ; 276
	i32 0, ; 277
	i32 58, ; 278
	i32 149, ; 279
	i32 186, ; 280
	i32 74, ; 281
	i32 23, ; 282
	i32 121, ; 283
	i32 68, ; 284
	i32 222, ; 285
	i32 130, ; 286
	i32 40, ; 287
	i32 96, ; 288
	i32 171, ; 289
	i32 3, ; 290
	i32 133, ; 291
	i32 128, ; 292
	i32 207, ; 293
	i32 78, ; 294
	i32 191, ; 295
	i32 135, ; 296
	i32 90, ; 297
	i32 48, ; 298
	i32 75, ; 299
	i32 108, ; 300
	i32 113, ; 301
	i32 44, ; 302
	i32 53, ; 303
	i32 150, ; 304
	i32 101, ; 305
	i32 156, ; 306
	i32 128, ; 307
	i32 148, ; 308
	i32 102, ; 309
	i32 205, ; 310
	i32 192, ; 311
	i32 159, ; 312
	i32 71, ; 313
	i32 174, ; 314
	i32 10, ; 315
	i32 31, ; 316
	i32 189, ; 317
	i32 127, ; 318
	i32 225, ; 319
	i32 19, ; 320
	i32 173, ; 321
	i32 178, ; 322
	i32 125, ; 323
	i32 40, ; 324
	i32 118, ; 325
	i32 194, ; 326
	i32 140, ; 327
	i32 46, ; 328
	i32 143, ; 329
	i32 67, ; 330
	i32 108, ; 331
	i32 101, ; 332
	i32 213, ; 333
	i32 55, ; 334
	i32 197, ; 335
	i32 205, ; 336
	i32 201, ; 337
	i32 33, ; 338
	i32 169, ; 339
	i32 34, ; 340
	i32 42, ; 341
	i32 9, ; 342
	i32 206, ; 343
	i32 48, ; 344
	i32 200, ; 345
	i32 12, ; 346
	i32 189, ; 347
	i32 46, ; 348
	i32 65, ; 349
	i32 215, ; 350
	i32 26, ; 351
	i32 25, ; 352
	i32 42, ; 353
	i32 195, ; 354
	i32 105, ; 355
	i32 10, ; 356
	i32 203, ; 357
	i32 204, ; 358
	i32 66, ; 359
	i32 174, ; 360
	i32 156, ; 361
	i32 170, ; 362
	i32 130, ; 363
	i32 177, ; 364
	i32 9, ; 365
	i32 27, ; 366
	i32 155, ; 367
	i32 162, ; 368
	i32 74, ; 369
	i32 32, ; 370
	i32 63, ; 371
	i32 104, ; 372
	i32 94, ; 373
	i32 66, ; 374
	i32 6, ; 375
	i32 92, ; 376
	i32 143, ; 377
	i32 14, ; 378
	i32 201, ; 379
	i32 172, ; 380
	i32 112, ; 381
	i32 220, ; 382
	i32 67, ; 383
	i32 217, ; 384
	i32 15, ; 385
	i32 64, ; 386
	i32 209, ; 387
	i32 80, ; 388
	i32 197, ; 389
	i32 210, ; 390
	i32 167, ; 391
	i32 34, ; 392
	i32 220, ; 393
	i32 170, ; 394
	i32 28, ; 395
	i32 69, ; 396
	i32 203, ; 397
	i32 167, ; 398
	i32 51, ; 399
	i32 2, ; 400
	i32 49, ; 401
	i32 85, ; 402
	i32 117, ; 403
	i32 88, ; 404
	i32 149, ; 405
	i32 27, ; 406
	i32 221, ; 407
	i32 145, ; 408
	i32 208, ; 409
	i32 35, ; 410
	i32 45, ; 411
	i32 115, ; 412
	i32 136, ; 413
	i32 114, ; 414
	i32 140, ; 415
	i32 209, ; 416
	i32 79, ; 417
	i32 8, ; 418
	i32 139, ; 419
	i32 73, ; 420
	i32 199, ; 421
	i32 30, ; 422
	i32 180, ; 423
	i32 214, ; 424
	i32 145, ; 425
	i32 20, ; 426
	i32 151, ; 427
	i32 20, ; 428
	i32 95, ; 429
	i32 18, ; 430
	i32 96, ; 431
	i32 1, ; 432
	i32 30, ; 433
	i32 113, ; 434
	i32 111, ; 435
	i32 186, ; 436
	i32 188, ; 437
	i32 76, ; 438
	i32 21, ; 439
	i32 133, ; 440
	i32 14, ; 441
	i32 60, ; 442
	i32 213, ; 443
	i32 114, ; 444
	i32 50, ; 445
	i32 154, ; 446
	i32 212, ; 447
	i32 134, ; 448
	i32 116, ; 449
	i32 24, ; 450
	i32 23, ; 451
	i32 19, ; 452
	i32 89 ; 453
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.1xx @ af27162bee43b7fecdca59b4f67aa8c175cbc875"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
