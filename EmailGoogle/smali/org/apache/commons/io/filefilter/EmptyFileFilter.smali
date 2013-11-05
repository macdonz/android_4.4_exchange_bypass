.class public Lorg/apache/commons/io/filefilter/EmptyFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "EmptyFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final NOT_EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lorg/apache/commons/io/filefilter/EmptyFileFilter;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/EmptyFileFilter;-><init>()V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 60
    new-instance v0, Lorg/apache/commons/io/filefilter/NotFileFilter;

    #v0=(UninitRef);
    sget-object v1, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/filefilter/EmptyFileFilter;->NOT_EMPTY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 66
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 7
    .parameter "file"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v1, 0x0

    .line 76
    #v1=(Null);
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 78
    .local v0, files:[Ljava/io/File;
    #v0=(Reference);
    if-eqz v0, :cond_0

    array-length v3, v0

    #v3=(Integer);
    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 80
    .end local v0           #files:[Ljava/io/File;
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v1

    :cond_2
    #v0=(Uninit);v1=(Null);v2=(One);v3=(Boolean);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v5, 0x0

    #v5=(LongLo);v6=(LongHi);
    cmp-long v3, v3, v5

    #v3=(Byte);
    if-nez v3, :cond_3

    :goto_1
    #v2=(Boolean);
    move v1, v2

    #v1=(Boolean);
    goto :goto_0

    :cond_3
    #v1=(Null);v2=(One);
    move v2, v1

    #v2=(Null);
    goto :goto_1
.end method
