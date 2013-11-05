.class public Lcom/android/mail/ui/ConversationListHelper;
.super Ljava/lang/Object;
.source "ConversationListHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public makeConversationListSpecialViews(Landroid/content/Context;Lcom/android/mail/ui/ControllableActivity;Lcom/android/mail/providers/Account;)Ljava/util/ArrayList;
    .locals 9
    .parameter "context"
    .parameter "activity"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mail/ui/ControllableActivity;",
            "Lcom/android/mail/providers/Account;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mail/ui/ConversationSpecialItemView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 36
    #v8=(Null);
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    #v6=(Reference);
    const v7, 0x7f04003f

    #v7=(Integer);
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/mail/ui/ConversationSyncDisabledTipView;

    .line 39
    .local v2, conversationSyncDisabledTipView:Lcom/android/mail/ui/ConversationSyncDisabledTipView;
    invoke-virtual {v2, p3, p2}, Lcom/android/mail/ui/ConversationSyncDisabledTipView;->bindAccount(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/ControllableActivity;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04003b

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/ui/ConversationsInOutboxTipView;

    .line 44
    .local v3, conversationsInOutboxTipView:Lcom/android/mail/ui/ConversationsInOutboxTipView;
    invoke-interface {p2}, Lcom/android/mail/ui/ControllableActivity;->getFolderSelector()Lcom/android/mail/ui/FolderSelector;

    move-result-object v6

    invoke-virtual {v3, p3, v6}, Lcom/android/mail/ui/ConversationsInOutboxTipView;->bind(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/FolderSelector;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04003d

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/ConversationPhotoTeaserView;

    .line 52
    .local v1, conversationPhotoTeaser:Lcom/android/mail/ui/ConversationPhotoTeaserView;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04002e

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/ui/ConversationLongPressTipView;

    .line 56
    .local v0, conversationLongPressTipView:Lcom/android/mail/ui/ConversationLongPressTipView;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040056

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/mail/ui/NestedFolderTeaserView;

    .line 59
    .local v5, nestedFolderTeaserView:Lcom/android/mail/ui/NestedFolderTeaserView;
    invoke-interface {p2}, Lcom/android/mail/ui/ControllableActivity;->getFolderSelector()Lcom/android/mail/ui/FolderSelector;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Lcom/android/mail/ui/NestedFolderTeaserView;->bind(Lcom/android/mail/providers/Account;Lcom/android/mail/ui/FolderSelector;)V

    .line 65
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 66
    .local v4, itemViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mail/ui/ConversationSpecialItemView;>;"
    #v4=(Reference);
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-object v4
.end method
