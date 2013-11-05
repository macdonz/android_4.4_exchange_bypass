.class Lcom/android/exchange/utility/Misc;
.super Ljava/lang/Object;
.source "UriCodec.java"


# static fields
.field private static final UPPER_CASE_DIGITS:[C

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "UTF-8"

    #v0=(Reference);
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/Misc;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    const/16 v0, 0x24

    #v0=(PosByte);
    new-array v0, v0, [C

    #v0=(Reference);
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exchange/utility/Misc;->UPPER_CASE_DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static byteToHexString(B)Ljava/lang/String;
    .locals 3
    .parameter "b"

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    sget-object v1, Lcom/android/exchange/utility/Misc;->UPPER_CASE_DIGITS:[C

    #v1=(Reference);
    shr-int/lit8 v2, p0, 0x4

    #v2=(Byte);
    and-int/lit8 v2, v2, 0xf

    #v2=(Integer);
    aget-char v1, v1, v2

    #v1=(Char);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    sget-object v1, Lcom/android/exchange/utility/Misc;->UPPER_CASE_DIGITS:[C

    #v1=(Reference);
    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    #v1=(Char);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    return-object v1
.end method
