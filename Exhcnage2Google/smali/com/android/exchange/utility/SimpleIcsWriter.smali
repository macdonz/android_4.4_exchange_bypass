.class public Lcom/android/exchange/utility/SimpleIcsWriter;
.super Ljava/lang/Object;
.source "SimpleIcsWriter.java"


# instance fields
.field private final mOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    #p0=(Reference);
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    .line 34
    return-void
.end method

.method static escapeTextValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x5c

    .line 139
    #v4=(PosByte);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 140
    .local v2, sb:Ljava/lang/StringBuilder;
    #v2=(Reference);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v0=(Conflicted);v1=(Integer);v3=(Conflicted);
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    #v3=(Integer);
    if-ge v1, v3, :cond_4

    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 142
    .local v0, ch:C
    #v0=(Char);
    const/16 v3, 0xa

    #v3=(PosByte);
    if-ne v0, v3, :cond_1

    .line 143
    const-string v3, "\\n"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_0
    :goto_1
    #v3=(Conflicted);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_1
    #v3=(PosByte);
    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 146
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_2

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_2

    if-ne v0, v4, :cond_3

    .line 147
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 153
    .end local v0           #ch:C
    :cond_4
    #v0=(Conflicted);v3=(Integer);
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    return-object v3
.end method

.method public static quoteParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "paramValue"

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 132
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "\""

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    #v2=(Reference);
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    #v0=(Reference);
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/exchange/utility/SimpleIcsWriter;->getBytes()[B

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->fromUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeLine(Ljava/lang/String;)V
    .locals 9
    .parameter "string"

    .prologue
    const/16 v8, 0xd

    #v8=(PosByte);
    const/16 v7, 0xa

    .line 40
    #v7=(PosByte);
    const/4 v4, 0x0

    .line 41
    .local v4, numBytes:I
    #v4=(Null);
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, arr$:[B
    #v0=(Reference);
    array-length v3, v0

    .local v3, len$:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    #v1=(Conflicted);v2=(Integer);v4=(Integer);v5=(Conflicted);v6=(Conflicted);
    if-ge v2, v3, :cond_1

    aget-byte v1, v0, v2

    .line 46
    .local v1, b:B
    #v1=(Byte);
    const/16 v5, 0x47

    #v5=(PosByte);
    if-le v4, v5, :cond_0

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isFirstUtf8Byte(B)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    .line 48
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    #v5=(Reference);
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 50
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x9

    #v6=(PosByte);
    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 51
    const/4 v4, 0x1

    .line 53
    :cond_0
    #v5=(Conflicted);v6=(Conflicted);
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    #v5=(Reference);
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v1           #b:B
    :cond_1
    #v1=(Conflicted);v5=(Conflicted);
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    #v5=(Reference);
    invoke-virtual {v5, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    iget-object v5, p0, Lcom/android/exchange/utility/SimpleIcsWriter;->mOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 58
    return-void
.end method

.method public writeTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 65
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 99
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 74
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    const-string v0, "CALSCALE"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "METHOD"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "PRODID"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "VERSION"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "CATEGORIES"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "CLASS"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "COMMENT"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "DESCRIPTION"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "LOCATION"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "RESOURCES"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "STATUS"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "SUMMARY"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "TRANSP"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "TZID"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "TZNAME"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "CONTACT"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "RELATED-TO"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "UID"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "ACTION"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "REQUEST-STATUS"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_1

    const-string v0, "X-LIC-LOCATION"

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_2

    .line 96
    :cond_1
    invoke-static {p2}, Lcom/android/exchange/utility/SimpleIcsWriter;->escapeTextValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 98
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/utility/SimpleIcsWriter;->writeLine(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
