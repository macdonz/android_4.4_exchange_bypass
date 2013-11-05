.class public abstract Lorg/apache/james/mime4j/util/TempStorage;
.super Ljava/lang/Object;
.source "TempStorage.java"


# static fields
.field private static inst:Lorg/apache/james/mime4j/util/TempStorage;

.field private static log:Lorg/apache/james/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 32
    const-class v0, Lorg/apache/james/mime4j/util/TempStorage;

    #v0=(Reference);
    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/util/TempStorage;->log:Lorg/apache/james/mime4j/Log;

    .line 33
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    .line 37
    const-string v0, "org.apache.james.mime4j.tempStorage"

    #v0=(Reference);
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    :try_start_0
    #v1=(Reference);
    sget-object v0, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    if-eqz v0, :cond_0

    .line 41
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/util/TempStorage;

    sput-object v0, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    sget-object v0, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lorg/apache/james/mime4j/util/SimpleTempStorage;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/james/mime4j/util/SimpleTempStorage;-><init>()V

    #v0=(Reference);
    sput-object v0, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    .line 52
    :cond_1
    return-void

    .line 44
    :catch_0
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);
    move-exception v0

    .line 45
    sget-object v2, Lorg/apache/james/mime4j/util/TempStorage;->log:Lorg/apache/james/mime4j/Log;

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Unable to create or instantiate TempStorage class \'"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' using SimpleTempStorage instead"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lorg/apache/james/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static getInstance()Lorg/apache/james/mime4j/util/TempStorage;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/james/mime4j/util/TempStorage;->inst:Lorg/apache/james/mime4j/util/TempStorage;

    #v0=(Reference);
    return-object v0
.end method


# virtual methods
.method public abstract getRootTempPath()Lorg/apache/james/mime4j/util/TempPath;
.end method
