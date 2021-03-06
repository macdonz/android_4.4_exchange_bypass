.class public final Lcom/google/android/mail/common/html/parser/HTML$Attribute;
.super Ljava/lang/Object;
.source "HTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attribute"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:I

.field private final values:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "type"

    .prologue
    .line 172
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/mail/common/html/parser/HTML$Attribute;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    .line 173
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/Set;)V
    .locals 4
    .parameter "name"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    .line 180
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 181
    #p0=(Reference);
    const-string v2, "Attribute name can not be null"

    #v2=(Reference);
    invoke-static {p1, v2}, Lcom/google/android/mail/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    if-nez p3, :cond_0

    move v2, v0

    :goto_0
    #v2=(Boolean);
    const/4 v3, 0x3

    #v3=(PosByte);
    if-ne p2, v3, :cond_1

    :goto_1
    #v0=(Boolean);
    xor-int/2addr v0, v2

    const-string v1, "Only ENUM_TYPE can have values != null"

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/google/android/mail/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 184
    iput-object p1, p0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    .line 185
    iput p2, p0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->type:I

    .line 186
    iput-object p3, p0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->values:Ljava/util/Set;

    .line 187
    return-void

    :cond_0
    #v0=(One);v1=(Null);v2=(Reference);v3=(Uninit);
    move v2, v1

    .line 182
    #v2=(Null);
    goto :goto_0

    :cond_1
    #v2=(Boolean);v3=(PosByte);
    move v0, v1

    #v0=(Null);
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 223
    if-ne p1, p0, :cond_0

    .line 224
    const/4 v1, 0x1

    .line 230
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    .line 226
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    instance-of v1, p1, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    move-object v0, p1

    .line 227
    #v0=(Reference);
    check-cast v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    .line 228
    .local v0, that:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    iget-object v1, p0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    #v1=(Reference);
    iget-object v2, v0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0

    .line 230
    .end local v0           #that:Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/mail/common/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method
