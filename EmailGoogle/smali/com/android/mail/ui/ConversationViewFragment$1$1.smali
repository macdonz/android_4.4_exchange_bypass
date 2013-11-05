.class Lcom/android/mail/ui/ConversationViewFragment$1$1;
.super Lcom/android/mail/ui/FragmentRunnable;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationViewFragment$1;->onChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mail/ui/ConversationViewFragment$1;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationViewFragment$1;Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$1$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$1;

    invoke-direct {p0, p2, p3}, Lcom/android/mail/ui/FragmentRunnable;-><init>(Ljava/lang/String;Landroid/app/Fragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public go()V
    .locals 5

    .prologue
    .line 184
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "CVF load observer fired, this=%s"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$1$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$1;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/ui/ConversationViewFragment$1;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 186
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$1$1;->this$1:Lcom/android/mail/ui/ConversationViewFragment$1;

    iget-object v0, v0, Lcom/android/mail/ui/ConversationViewFragment$1;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v0}, Lcom/android/mail/ui/ConversationViewFragment;->access$200(Lcom/android/mail/ui/ConversationViewFragment;)V

    .line 187
    return-void
.end method
