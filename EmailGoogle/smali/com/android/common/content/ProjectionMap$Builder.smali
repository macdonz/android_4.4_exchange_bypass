.class public Lcom/android/common/content/ProjectionMap$Builder;
.super Ljava/lang/Object;
.source "ProjectionMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/content/ProjectionMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mMap:Lcom/android/common/content/ProjectionMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    #p0=(Reference);
    new-instance v0, Lcom/android/common/content/ProjectionMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/common/content/ProjectionMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/common/content/ProjectionMap$Builder;->mMap:Lcom/android/common/content/ProjectionMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/common/content/ProjectionMap$Builder;
    .locals 3
    .parameter "alias"
    .parameter "expression"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/common/content/ProjectionMap$Builder;->mMap:Lcom/android/common/content/ProjectionMap;

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AS "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/common/content/ProjectionMap;->access$000(Lcom/android/common/content/ProjectionMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-object p0
.end method

.method public build()Lcom/android/common/content/ProjectionMap;
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/common/content/ProjectionMap$Builder;->mMap:Lcom/android/common/content/ProjectionMap;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/common/content/ProjectionMap;->size()I

    move-result v1

    #v1=(Integer);
    new-array v0, v1, [Ljava/lang/String;

    .line 58
    .local v0, columns:[Ljava/lang/String;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/common/content/ProjectionMap$Builder;->mMap:Lcom/android/common/content/ProjectionMap;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/common/content/ProjectionMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 60
    iget-object v1, p0, Lcom/android/common/content/ProjectionMap$Builder;->mMap:Lcom/android/common/content/ProjectionMap;

    invoke-static {v1, v0}, Lcom/android/common/content/ProjectionMap;->access$102(Lcom/android/common/content/ProjectionMap;[Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/android/common/content/ProjectionMap$Builder;->mMap:Lcom/android/common/content/ProjectionMap;

    return-object v1
.end method
