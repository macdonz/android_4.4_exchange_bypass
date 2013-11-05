.class Lcom/android/mail/ui/ConversationSyncDisabledTipView$3;
.super Ljava/lang/Object;
.source "ConversationSyncDisabledTipView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/ConversationSyncDisabledTipView;->onFinishInflate()V
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
    .line 168
    iput-object p1, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView$3;->this$0:Lcom/android/mail/ui/ConversationSyncDisabledTipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/mail/ui/ConversationSyncDisabledTipView$3;->this$0:Lcom/android/mail/ui/ConversationSyncDisabledTipView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->dismiss()V

    .line 172
    return-void
.end method
