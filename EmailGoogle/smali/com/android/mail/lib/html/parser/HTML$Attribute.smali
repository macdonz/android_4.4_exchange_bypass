.class public final Lcom/android/mail/lib/html/parser/HTML$Attribute;
.super Ljava/lang/Object;
.source "HTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HTML;
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

    .line 179
    #v1=(Null);
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 180
    #p0=(Reference);
    const-string v2, "Attribute name can not be null"

    #v2=(Reference);
    invoke-static {p1, v2}, Lcom/android/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
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
    invoke-static {v0, v1}, Lcom/android/mail/lib/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 183
    iput-object p1, p0, Lcom/android/mail/lib/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    .line 184
    iput p2, p0, Lcom/android/mail/lib/html/parser/HTML$Attribute;->type:I

    .line 185
    iput-object p3, p0, Lcom/android/mail/lib/html/parser/HTML$Attribute;->values:Ljava/util/Set;

    .line 186
    return-void

    :cond_0
    #v0=(One);v1=(Null);v2=(Reference);v3=(Uninit);
    move v2, v1

    .line 181
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
    .line 222
    if-ne p1, p0, :cond_0

    .line 223
    const/4 v1, 0x1

    .line 229
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    .line 225
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    instance-of v1, p1, Lcom/android/mail/lib/html/parser/HTML$Attribute;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    move-object v0, p1

    .line 226
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/lib/html/parser/HTML$Attribute;

    .line 227
    .local v0, that:Lcom/android/mail/lib/html/parser/HTML$Attribute;
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    #v1=(Reference);
    iget-object v2, v0, Lcom/android/mail/lib/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0

    .line 229
    .end local v0           #that:Lcom/android/mail/lib/html/parser/HTML$Attribute;
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HTML$Attribute;->name:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method
