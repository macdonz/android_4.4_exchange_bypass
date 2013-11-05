.class Lcom/android/mail/ui/ConversationSyncDisabledTipView$1;
.super Ljava/lang/Object;
.source "ConversationSyncDisabledTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationSyncDisabledTipView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationSyncDisabledTipView;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView$1;->this$0:Lcom/android/mail/ui/ConversationSyncDisabledTipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView$1;->this$0:Lcom/android/mail/ui/ConversationSyncDisabledTipView;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->access$000(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)Lcom/android/mail/providers/Account;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mail/providers/Account;->getAccountManagerAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView$1;->this$0:Lcom/android/mail/ui/ConversationSyncDisabledTipView;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->access$000(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)Lcom/android/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mail/providers/Account;->syncAuthority:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->newInstance(Landroid/accounts/Account;Ljava/lang/String;)Lcom/android/mail/ui/TurnAutoSyncOnDialog;

    move-result-object v0

    .line 121
    .local v0, dialog:Lcom/android/mail/ui/TurnAutoSyncOnDialog;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView$1;->this$0:Lcom/android/mail/ui/ConversationSyncDisabledTipView;

    invoke-static {v1}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->access$100(Lcom/android/mail/ui/ConversationSyncDisabledTipView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "auto sync"

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/ui/TurnAutoSyncOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 122
    return-void
.end method
