.class public Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;
.super Lcom/android/mail/browse/ConversationOverlayItem;
.source "ConversationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageFooterItem"
.end annotation


# instance fields
.field private final mHeaderitem:Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;

.field final synthetic this$0:Lcom/android/mail/browse/ConversationViewAdapter;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;)V
    .locals 0
    .parameter
    .parameter "item"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;->this$0:Lcom/android/mail/browse/ConversationViewAdapter;

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationOverlayItem;-><init>()V

    .line 268
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;->mHeaderitem:Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    .line 269
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;Lcom/android/mail/browse/ConversationViewAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;-><init>(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "measureOnly"

    .prologue
    .line 286
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MessageFooterView;

    .line 287
    .local v0, attachmentsView:Lcom/android/mail/browse/MessageFooterView;
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;->mHeaderitem:Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;->this$0:Lcom/android/mail/browse/ConversationViewAdapter;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/browse/ConversationViewAdapter;->access$100(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/browse/ConversationAccountController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/mail/browse/ConversationAccountController;->getAccount()Lcom/android/mail/providers/Account;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mail/providers/Account;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/mail/browse/MessageFooterView;->bind(Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;Landroid/net/Uri;Z)V

    .line 288
    return-void
.end method

.method public createView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 278
    const v1, 0x7f040033

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MessageFooterView;

    .line 280
    .local v0, v:Lcom/android/mail/browse/MessageFooterView;
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;->this$0:Lcom/android/mail/browse/ConversationViewAdapter;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/browse/ConversationViewAdapter;->access$600(Lcom/android/mail/browse/ConversationViewAdapter;)Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;->this$0:Lcom/android/mail/browse/ConversationViewAdapter;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/browse/ConversationViewAdapter;->access$700(Lcom/android/mail/browse/ConversationViewAdapter;)Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mail/browse/MessageFooterView;->initialize(Landroid/app/LoaderManager;Landroid/app/FragmentManager;)V

    .line 281
    return-object v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 304
    const/16 v0, 0x30

    #v0=(PosByte);
    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;->mHeaderitem:Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 314
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Boolean);
    invoke-super {p0}, Lcom/android/mail/browse/ConversationOverlayItem;->getHeight()I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x2

    #v0=(PosByte);
    return v0
.end method

.method public isContiguous()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$MessageFooterItem;->mHeaderitem:Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;->isExpanded()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method
