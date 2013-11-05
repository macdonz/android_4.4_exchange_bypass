.class public Lorg/apache/james/mime4j/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/mail/utils/LogUtils;->TAG:Ljava/lang/String;

    #v0=(Reference);
    sput-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter "mClazz"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    #p0=(Reference);
    return-void
.end method

.method private static toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .parameter "o"
    .parameter "t"

    .prologue
    .line 109
    if-nez p0, :cond_0

    const-string v0, "(null)"

    .line 110
    .local v0, m:Ljava/lang/String;
    :goto_0
    #v0=(Reference);
    if-nez p1, :cond_1

    .line 113
    .end local v0           #m:Ljava/lang/String;
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);
    return-object v0

    .line 109
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0

    .line 113
    .restart local v0       #m:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public debug(Ljava/lang/Object;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isDebugEnabled()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 67
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 66
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public error(Ljava/lang/Object;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 93
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/james/mime4j/Log;->isInfoEnabled()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 77
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 76
    :cond_0
    #v0=(Boolean);v1=(Uninit);
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 85
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-static {p1, v1}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "message"
    .parameter "t"

    .prologue
    .line 89
    sget-object v0, Lorg/apache/james/mime4j/Log;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    invoke-static {p1, p2}, Lorg/apache/james/mime4j/Log;->toString(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
