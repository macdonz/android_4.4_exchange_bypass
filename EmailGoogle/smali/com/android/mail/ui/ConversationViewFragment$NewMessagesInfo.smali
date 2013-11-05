.class Lcom/android/mail/ui/ConversationViewFragment$NewMessagesInfo;
.super Ljava/lang/Object;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewMessagesInfo"
.end annotation


# instance fields
.field count:I

.field countFromSelf:I

.field senderAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$NewMessagesInfo;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;Lcom/android/mail/ui/ConversationViewFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1259
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment$NewMessagesInfo;-><init>(Lcom/android/mail/ui/ConversationViewFragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getNotificationText()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v4, 0x1

    .line 1271
    #v4=(One);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$NewMessagesInfo;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/mail/ui/ConversationViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1272
    .local v1, res:Landroid/content/res/Resources;
    #v1=(Reference);
    iget v2, p0, Lcom/android/mail/ui/ConversationViewFragment$NewMessagesInfo;->count:I

    #v2=(Integer);
    if-le v2, v4, :cond_0

    .line 1273
    const v2, 0x7f10000e

    iget v3, p0, Lcom/android/mail/ui/ConversationViewFragment$NewMessagesInfo;->count:I

    #v3=(Integer);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    iget v5, p0, Lcom/android/mail/ui/ConversationViewFragment$NewMessagesInfo;->count:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1276
    :goto_0
    #v0=(Conflicted);v2=(Reference);v5=(Conflicted);
    return-object v2

    .line 1275
    :cond_0
    #v0=(Uninit);v2=(Integer);v3=(Uninit);v4=(One);v5=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$NewMessagesInfo;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment$NewMessagesInfo;->senderAddress:Ljava/lang/String;

    #v3=(Reference);
    invoke-virtual {v2, v3}, Lcom/android/mail/ui/ConversationViewFragment;->getAddress(Ljava/lang/String;)Lcom/android/mail/providers/Address;

    move-result-object v0

    .line 1276
    .local v0, addr:Lcom/android/mail/providers/Address;
    #v0=(Reference);
    const v3, 0x7f0a00a9

    #v3=(Integer);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    :goto_1
    #v2=(Reference);
    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    #v2=(Boolean);
    invoke-virtual {v0}, Lcom/android/mail/providers/Address;->getName()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    goto :goto_1
.end method
