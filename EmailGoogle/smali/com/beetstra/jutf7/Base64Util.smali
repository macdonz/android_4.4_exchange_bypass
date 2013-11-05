.class Lcom/beetstra/jutf7/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# instance fields
.field private final alphabet:[C

.field private final inverseAlphabet:[I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .parameter "alphabet"

    .prologue
    const/16 v4, 0x80

    .line 67
    #v4=(PosShort);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    #p0=(Reference);
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    #v2=(Reference);
    iput-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    #v2=(Integer);
    const/16 v3, 0x40

    #v3=(PosByte);
    if-eq v2, v3, :cond_0

    .line 70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #v2=(UninitRef);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "alphabet has incorrect length (should be 64, not "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 72
    :cond_0
    #v2=(Integer);v3=(PosByte);v4=(PosShort);
    new-array v2, v4, [I

    #v2=(Reference);
    iput-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    .line 73
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    const/4 v3, -0x1

    #v3=(Byte);
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 74
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    array-length v2, v2

    #v2=(Integer);
    if-ge v1, v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    #v2=(Reference);
    aget-char v0, v2, v1

    .line 76
    .local v0, ch:C
    #v0=(Char);
    if-lt v0, v4, :cond_1

    .line 77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #v2=(UninitRef);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "invalid character in alphabet: "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v2=(Reference);
    throw v2

    .line 78
    :cond_1
    #v3=(Byte);v4=(PosShort);
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aput v1, v2, v0

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v0           #ch:C
    :cond_2
    #v0=(Conflicted);v2=(Integer);
    return-void
.end method


# virtual methods
.method contains(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v0, 0x0

    .line 103
    #v0=(Null);
    const/16 v1, 0x80

    #v1=(PosShort);
    if-lt p1, v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    #v0=(Boolean);v1=(Integer);
    return v0

    :cond_1
    #v0=(Null);v1=(PosShort);
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    #v1=(Reference);
    aget v1, v1, p1

    #v1=(Integer);
    if-ltz v1, :cond_0

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method getChar(I)B
    .locals 1
    .parameter "sextet"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    #v0=(Reference);
    aget-char v0, v0, p1

    #v0=(Char);
    int-to-byte v0, v0

    #v0=(Byte);
    return v0
.end method

.method getSextet(B)I
    .locals 1
    .parameter "ch"

    .prologue
    .line 91
    const/16 v0, 0x80

    #v0=(PosShort);
    if-lt p1, v0, :cond_0

    .line 92
    const/4 v0, -0x1

    .line 93
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(PosShort);
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    #v0=(Reference);
    aget v0, v0, p1

    #v0=(Integer);
    goto :goto_0
.end method
