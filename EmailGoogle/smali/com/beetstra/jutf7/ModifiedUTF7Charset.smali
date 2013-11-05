.class Lcom/beetstra/jutf7/ModifiedUTF7Charset;
.super Lcom/beetstra/jutf7/UTF7StyleCharset;
.source "ModifiedUTF7Charset.java"


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "aliases"

    .prologue
    .line 41
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+,"

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/beetstra/jutf7/UTF7StyleCharset;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 42
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method canEncodeDirectly(C)Z
    .locals 2
    .parameter "ch"

    .prologue
    const/4 v0, 0x0

    .line 45
    #v0=(Null);
    invoke-virtual {p0}, Lcom/beetstra/jutf7/ModifiedUTF7Charset;->shift()B

    move-result v1

    #v1=(Byte);
    if-ne p1, v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Null);
    const/16 v1, 0x20

    #v1=(PosByte);
    if-lt p1, v1, :cond_0

    const/16 v1, 0x7e

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0
.end method

.method shift()B
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x26

    #v0=(PosByte);
    return v0
.end method

.method unshift()B
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x2d

    #v0=(PosByte);
    return v0
.end method
