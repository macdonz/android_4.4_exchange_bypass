.class Lcom/android/mail/ui/AbstractActivityController$1;
.super Landroid/database/DataSetObserver;
.source "AbstractActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/AbstractActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AbstractActivityController;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$1;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 477
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 479
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$1;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$1;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iget-object v0, v0, Lcom/android/mail/ui/AbstractActivityController;->mConversationListCursor:Lcom/android/mail/browse/ConversationCursor;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationCursor;->handleNotificationActions()V

    .line 482
    :cond_0
    return-void
.end method
