.class final Lcom/google/common/base/CharMatcher$11;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$chars:[C


# direct methods
.method constructor <init>([C)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/common/base/CharMatcher$11;->val$chars:[C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 468
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public matches(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$11;->val$chars:[C

    #v0=(Reference);
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    #v0=(Integer);
    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method setBits(Lcom/google/common/base/CharMatcher$LookupTable;)V
    .locals 4
    .parameter "table"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$11;->val$chars:[C

    .local v0, arr$:[C
    #v0=(Reference);
    array-length v3, v0

    .local v3, len$:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    #v1=(Conflicted);v2=(Integer);
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 475
    .local v1, c:C
    #v1=(Char);
    invoke-virtual {p1, v1}, Lcom/google/common/base/CharMatcher$LookupTable;->set(C)V

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    .end local v1           #c:C
    :cond_0
    #v1=(Conflicted);
    return-void
.end method