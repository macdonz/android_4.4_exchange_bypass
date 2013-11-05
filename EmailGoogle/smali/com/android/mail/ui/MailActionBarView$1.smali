.class Lcom/android/mail/ui/MailActionBarView$1;
.super Lcom/android/mail/providers/AccountObserver;
.source "MailActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/MailActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/MailActionBarView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/MailActionBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/mail/ui/MailActionBarView$1;->this$0:Lcom/android/mail/ui/MailActionBarView;

    invoke-direct {p0}, Lcom/android/mail/providers/AccountObserver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/mail/providers/Account;)V
    .locals 1
    .parameter "newAccount"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/mail/ui/MailActionBarView$1;->this$0:Lcom/android/mail/ui/MailActionBarView;

    #v0=(Reference);
    invoke-static {v0, p1}, Lcom/android/mail/ui/MailActionBarView;->access$300(Lcom/android/mail/ui/MailActionBarView;Lcom/android/mail/providers/Account;)V

    .line 161
    return-void
.end method
