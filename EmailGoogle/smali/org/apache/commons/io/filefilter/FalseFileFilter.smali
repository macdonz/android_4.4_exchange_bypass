.class public Lorg/apache/commons/io/filefilter/FalseFileFilter;
.super Ljava/lang/Object;
.source "FalseFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/io/filefilter/IOFileFilter;


# static fields
.field public static final FALSE:Lorg/apache/commons/io/filefilter/IOFileFilter;

.field public static final INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/commons/io/filefilter/FalseFileFilter;-><init>()V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    .line 43
    sget-object v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    sput-object v0, Lorg/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lorg/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 58
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 69
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method
