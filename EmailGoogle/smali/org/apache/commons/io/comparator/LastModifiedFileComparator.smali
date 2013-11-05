.class public Lorg/apache/commons/io/comparator/LastModifiedFileComparator;
.super Ljava/lang/Object;
.source "LastModifiedFileComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final LASTMODIFIED_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;-><init>()V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    .line 54
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    #v0=(UninitRef);
    sget-object v1, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_COMPARATOR:Ljava/util/Comparator;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->LASTMODIFIED_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 8
    .parameter "file1"
    .parameter "file2"

    .prologue
    const-wide/16 v6, 0x0

    .line 68
    #v6=(LongLo);v7=(LongHi);
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    sub-long v0, v2, v4

    .line 69
    .local v0, result:J
    #v0=(LongLo);v1=(LongHi);
    cmp-long v2, v0, v6

    #v2=(Byte);
    if-gez v2, :cond_0

    .line 70
    const/4 v2, -0x1

    .line 74
    :goto_0
    return v2

    .line 71
    :cond_0
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    .line 72
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0

    .line 74
    :cond_1
    #v2=(Byte);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/LastModifiedFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
