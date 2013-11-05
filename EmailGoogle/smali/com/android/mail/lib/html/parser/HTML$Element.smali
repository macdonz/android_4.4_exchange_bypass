.class public final Lcom/android/mail/lib/html/parser/HTML$Element;
.super Ljava/lang/Object;
.source "HTML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/lib/html/parser/HTML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/lib/html/parser/HTML$Element$Flow;
    }
.end annotation


# instance fields
.field private final breaksFlow:Z

.field private final empty:Z

.field private final flow:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

.field private final name:Ljava/lang/String;

.field private final optionalEndTag:Z

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZZLcom/android/mail/lib/html/parser/HTML$Element$Flow;)V
    .locals 1
    .parameter "name"
    .parameter "type"
    .parameter "empty"
    .parameter "optionalEndTag"
    .parameter "breaksFlow"
    .parameter "flow"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    #p0=(Reference);
    const-string v0, "Element name can not be null"

    #v0=(Reference);
    invoke-static {p1, v0}, Lcom/android/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v0, "Element flow can not be null"

    invoke-static {p6, v0}, Lcom/android/mail/lib/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->name:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->type:I

    .line 73
    iput-boolean p3, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->empty:Z

    .line 74
    iput-boolean p4, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->optionalEndTag:Z

    .line 75
    iput-boolean p5, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->breaksFlow:Z

    .line 76
    iput-object p6, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->flow:Lcom/android/mail/lib/html/parser/HTML$Element$Flow;

    .line 77
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 130
    if-ne p1, p0, :cond_0

    .line 131
    const/4 v1, 0x1

    .line 137
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    .line 133
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);
    instance-of v1, p1, Lcom/android/mail/lib/html/parser/HTML$Element;

    #v1=(Boolean);
    if-eqz v1, :cond_1

    move-object v0, p1

    .line 134
    #v0=(Reference);
    check-cast v0, Lcom/android/mail/lib/html/parser/HTML$Element;

    .line 135
    .local v0, that:Lcom/android/mail/lib/html/parser/HTML$Element;
    iget-object v1, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->name:Ljava/lang/String;

    #v1=(Reference);
    iget-object v2, v0, Lcom/android/mail/lib/html/parser/HTML$Element;->name:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    goto :goto_0

    .line 137
    .end local v0           #that:Lcom/android/mail/lib/html/parser/HTML$Element;
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->name:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->type:I

    #v0=(Integer);
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->name:Ljava/lang/String;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->empty:Z

    #v0=(Boolean);
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/mail/lib/html/parser/HTML$Element;->name:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method
