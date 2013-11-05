.class public Lorg/apache/commons/io/filefilter/CanReadFileFilter;
.super Lorg/apache/commons/io/filefilter/AbstractFileFilter;
.source "CanReadFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_READ:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final CAN_READ:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final READ_ONLY:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/CanReadFileFilter;-><init>()V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 69
    new-instance v0, Lorg/apache/commons/io/filefilter/NotFileFilter;

    #v0=(UninitRef);
    sget-object v1, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lorg/apache/commons/io/filefilter/IOFileFilter;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lorg/apache/commons/io/filefilter/NotFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CANNOT_READ:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 72
    new-instance v0, Lorg/apache/commons/io/filefilter/AndFileFilter;

    #v0=(UninitRef);
    sget-object v1, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->CAN_READ:Lorg/apache/commons/io/filefilter/IOFileFilter;

    sget-object v2, Lorg/apache/commons/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/io/filefilter/AndFileFilter;-><init>(Lorg/apache/commons/io/filefilter/IOFileFilter;Lorg/apache/commons/io/filefilter/IOFileFilter;)V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/filefilter/CanReadFileFilter;->READ_ONLY:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    .line 79
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
