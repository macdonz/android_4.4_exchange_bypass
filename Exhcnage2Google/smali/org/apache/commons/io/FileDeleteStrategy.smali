.class public Lorg/apache/commons/io/FileDeleteStrategy;
.super Ljava/lang/Object;
.source "FileDeleteStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;
    }
.end annotation


# static fields
.field public static final FORCE:Lorg/apache/commons/io/FileDeleteStrategy;

.field public static final NORMAL:Lorg/apache/commons/io/FileDeleteStrategy;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lorg/apache/commons/io/FileDeleteStrategy;

    #v0=(UninitRef);
    const-string v1, "Normal"

    #v1=(Reference);
    invoke-direct {v0, v1}, Lorg/apache/commons/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/FileDeleteStrategy;->NORMAL:Lorg/apache/commons/io/FileDeleteStrategy;

    .line 46
    new-instance v0, Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;-><init>()V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/FileDeleteStrategy;->FORCE:Lorg/apache/commons/io/FileDeleteStrategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    #p0=(Reference);
    iput-object p1, p0, Lorg/apache/commons/io/FileDeleteStrategy;->name:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public deleteQuietly(Ljava/io/File;)Z
    .locals 2
    .parameter "fileToDelete"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 74
    :cond_0
    #v1=(Conflicted);
    const/4 v1, 0x1

    .line 79
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    .line 77
    :cond_1
    :try_start_0
    #v0=(Uninit);
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/FileDeleteStrategy;->doDelete(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, ex:Ljava/io/IOException;
    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method protected doDelete(Ljava/io/File;)Z
    .locals 1
    .parameter "fileToDelete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "FileDeleteStrategy["

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/io/FileDeleteStrategy;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
