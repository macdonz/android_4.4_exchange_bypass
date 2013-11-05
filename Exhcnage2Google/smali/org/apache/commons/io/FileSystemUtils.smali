.class public Lorg/apache/commons/io/FileSystemUtils;
.super Ljava/lang/Object;
.source "FileSystemUtils.java"


# static fields
.field private static final INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

.field private static final OS:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 52
    #v4=(Byte);
    new-instance v3, Lorg/apache/commons/io/FileSystemUtils;

    #v3=(UninitRef);
    invoke-direct {v3}, Lorg/apache/commons/io/FileSystemUtils;-><init>()V

    #v3=(Reference);
    sput-object v3, Lorg/apache/commons/io/FileSystemUtils;->INSTANCE:Lorg/apache/commons/io/FileSystemUtils;

    .line 68
    const/4 v1, 0x0

    .line 70
    .local v1, os:I
    :try_start_0
    #v1=(Null);
    const-string v3, "os.name"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, osName:Ljava/lang/String;
    #v2=(Reference);
    if-nez v2, :cond_0

    .line 72
    new-instance v3, Ljava/io/IOException;

    #v3=(UninitRef);
    const-string v4, "os.name not found"

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v2           #osName:Ljava/lang/String;
    :catch_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v0

    .line 97
    .local v0, ex:Ljava/lang/Exception;
    #v0=(Reference);
    const/4 v1, -0x1

    .line 99
    .end local v0           #ex:Ljava/lang/Exception;
    :goto_0
    #v0=(Conflicted);v1=(Byte);
    sput v1, Lorg/apache/commons/io/FileSystemUtils;->OS:I

    .line 100
    return-void

    .line 74
    .restart local v2       #osName:Ljava/lang/String;
    :cond_0
    :try_start_1
    #v0=(Uninit);v1=(Null);v2=(Reference);v3=(Reference);v4=(Byte);
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 76
    const-string v3, "windows"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-eq v3, v4, :cond_1

    .line 77
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0

    .line 78
    :cond_1
    #v1=(Null);
    const-string v3, "linux"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_2

    const-string v3, "sun os"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_2

    const-string v3, "sunos"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_2

    const-string v3, "solaris"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_2

    const-string v3, "mpe/ix"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_2

    const-string v3, "freebsd"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_2

    const-string v3, "irix"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_2

    const-string v3, "digital unix"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_2

    const-string v3, "unix"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_2

    const-string v3, "mac os x"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-eq v3, v4, :cond_3

    .line 88
    :cond_2
    const/4 v1, 0x2

    #v1=(PosByte);
    goto :goto_0

    .line 89
    :cond_3
    #v1=(Null);
    const-string v3, "hp-ux"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    if-ne v3, v4, :cond_4

    const-string v3, "aix"

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    #v3=(Integer);
    if-eq v3, v4, :cond_5

    .line 91
    :cond_4
    const/4 v1, 0x3

    #v1=(PosByte);
    goto :goto_0

    .line 93
    :cond_5
    #v1=(Null);
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 107
    #p0=(Reference);
    return-void
.end method
