.class public final Lorg/apache/james/mime4j/LogFactory;
.super Ljava/lang/Object;
.source "LogFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    #p0=(Reference);
    return-void
.end method

.method public static getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;
    .locals 1
    .parameter "clazz"

    .prologue
    .line 27
    new-instance v0, Lorg/apache/james/mime4j/Log;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/Log;-><init>(Ljava/lang/Class;)V

    #v0=(Reference);
    return-object v0
.end method
