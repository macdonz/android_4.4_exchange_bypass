.class Lcom/google/common/collect/ImmutableCollection$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableCollection.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final elements:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .parameter "elements"

    .prologue
    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 255
    #p0=(Reference);
    iput-object p1, p0, Lcom/google/common/collect/ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    .line 256
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    #v0=(Reference);
    array-length v0, v0

    #v0=(Integer);
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/collect/ImmutableCollection;->EMPTY_IMMUTABLE_COLLECTION:Lcom/google/common/collect/ImmutableCollection;

    :goto_0
    #v0=(Reference);v1=(Conflicted);
    return-object v0

    :cond_0
    #v0=(Integer);v1=(Uninit);
    new-instance v0, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/google/common/collect/ImmutableCollection$SerializedForm;->elements:[Ljava/lang/Object;

    #v1=(Reference);
    invoke-static {v1}, Lcom/google/common/collect/Platform;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableCollection$ArrayImmutableCollection;-><init>([Ljava/lang/Object;)V

    #v0=(Reference);
    goto :goto_0
.end method
