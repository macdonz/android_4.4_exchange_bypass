.class public Lorg/apache/commons/io/comparator/PathFileComparator;
.super Ljava/lang/Object;
.source "PathFileComparator.java"

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
.field public static final PATH_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_INSENSITIVE_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_SYSTEM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_SYSTEM_REVERSE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final caseSensitivity:Lorg/apache/commons/io/IOCase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/apache/commons/io/comparator/PathFileComparator;

    #v0=(UninitRef);
    invoke-direct {v0}, Lorg/apache/commons/io/comparator/PathFileComparator;-><init>()V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/comparator/PathFileComparator;->PATH_COMPARATOR:Ljava/util/Comparator;

    .line 58
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    #v0=(UninitRef);
    sget-object v1, Lorg/apache/commons/io/comparator/PathFileComparator;->PATH_COMPARATOR:Ljava/util/Comparator;

    #v1=(Reference);
    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/comparator/PathFileComparator;->PATH_REVERSE:Ljava/util/Comparator;

    .line 61
    new-instance v0, Lorg/apache/commons/io/comparator/PathFileComparator;

    #v0=(UninitRef);
    sget-object v1, Lorg/apache/commons/io/IOCase;->INSENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/PathFileComparator;-><init>(Lorg/apache/commons/io/IOCase;)V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/comparator/PathFileComparator;->PATH_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    .line 64
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    #v0=(UninitRef);
    sget-object v1, Lorg/apache/commons/io/comparator/PathFileComparator;->PATH_INSENSITIVE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/comparator/PathFileComparator;->PATH_INSENSITIVE_REVERSE:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lorg/apache/commons/io/comparator/PathFileComparator;

    #v0=(UninitRef);
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/PathFileComparator;-><init>(Lorg/apache/commons/io/IOCase;)V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/comparator/PathFileComparator;->PATH_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    .line 70
    new-instance v0, Lorg/apache/commons/io/comparator/ReverseComparator;

    #v0=(UninitRef);
    sget-object v1, Lorg/apache/commons/io/comparator/PathFileComparator;->PATH_SYSTEM_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lorg/apache/commons/io/comparator/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    #v0=(Reference);
    sput-object v0, Lorg/apache/commons/io/comparator/PathFileComparator;->PATH_SYSTEM_REVERSE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 79
    #p0=(Reference);
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    #v0=(Reference);
    iput-object v0, p0, Lorg/apache/commons/io/comparator/PathFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/io/IOCase;)V
    .locals 0
    .parameter "caseSensitivity"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    #p0=(Reference);
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .end local p1
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/io/comparator/PathFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    .line 89
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 3
    .parameter "file1"
    .parameter "file2"

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/commons/io/comparator/PathFileComparator;->caseSensitivity:Lorg/apache/commons/io/IOCase;

    #v0=(Reference);
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/io/IOCase;->checkCompareTo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    check-cast p1, Ljava/io/File;

    .end local p1
    check-cast p2, Ljava/io/File;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/io/comparator/PathFileComparator;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
