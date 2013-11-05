.class public Lcom/android/email/EmailAddressValidator;
.super Ljava/lang/Object;
.source "EmailAddressValidator.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "invalidText"

    .prologue
    .line 26
    const-string v0, ""

    #v0=(Reference);
    return-object v0
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x1

    .line 31
    #v0=(One);
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    array-length v1, v1

    #v1=(Integer);
    if-ne v1, v0, :cond_0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
