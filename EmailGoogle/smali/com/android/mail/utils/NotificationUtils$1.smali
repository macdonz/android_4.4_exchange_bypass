.class final Lcom/android/mail/utils/NotificationUtils$1;
.super Ljava/lang/Object;
.source "NotificationUtils.java"

# interfaces
.implements Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/utils/NotificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public createInstance()Lcom/google/android/mail/common/html/parser/HtmlTree$PlainTextConverter;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/mail/utils/NotificationUtils$MailMessagePlainTextConverter;-><init>()V

    #v0=(Reference);
    return-object v0
.end method
