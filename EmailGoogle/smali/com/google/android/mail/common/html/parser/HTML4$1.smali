.class final Lcom/google/android/mail/common/html/parser/HTML4$1;
.super Ljava/lang/Object;
.source "HTML4.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlWhitelist;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mail/common/html/parser/HTML4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public lookupAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;
    .locals 1
    .parameter "name"

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/android/mail/common/html/parser/HTML4;->lookupAttribute(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Attribute;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public lookupElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    invoke-static {p1}, Lcom/google/android/mail/common/html/parser/HTML4;->lookupElement(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HTML$Element;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
