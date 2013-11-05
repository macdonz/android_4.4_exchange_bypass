.class final Lcom/android/email2/ui/MailActivityEmail$1;
.super Ljava/lang/Object;
.source "MailActivityEmail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email2/ui/MailActivityEmail;->setServicesEnabledAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/email2/ui/MailActivityEmail$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/email2/ui/MailActivityEmail$1;->val$context:Landroid/content/Context;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email2/ui/MailActivityEmail;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 109
    return-void
.end method
