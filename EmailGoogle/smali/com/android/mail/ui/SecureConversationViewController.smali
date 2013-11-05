.class public Lcom/android/mail/ui/SecureConversationViewController;
.super Ljava/lang/Object;
.source "SecureConversationViewController.java"

# interfaces
.implements Lcom/android/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;


# instance fields
.field private final mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

.field private mConversationHeaderView:Lcom/android/mail/browse/ConversationViewHeader;

.field private mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

.field private mMessage:Lcom/android/mail/browse/ConversationMessage;

.field private mMessageFooterView:Lcom/android/mail/browse/MessageFooterView;

.field private mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

.field private mProgressController:Lcom/android/mail/ui/ConversationViewProgressController;

.field private mScrollView:Lcom/android/mail/browse/MessageScrollView;

.field private mSideMarginInWebPx:I

.field private mWebView:Lcom/android/mail/browse/MessageWebView;


# direct methods
.method public constructor <init>(Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;)V
    .locals 0
    .parameter "callbacks"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    .line 70
    return-void
.end method


# virtual methods
.method public dismissLoadingStatus()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mProgressController:Lcom/android/mail/ui/ConversationViewProgressController;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewProgressController;->dismissLoadingStatus()V

    .line 182
    return-void
.end method

.method public getConversationHeaderView()Lcom/android/mail/browse/ConversationViewHeader;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mConversationHeaderView:Lcom/android/mail/browse/ConversationViewHeader;

    #v0=(Reference);
    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Lcom/android/mail/browse/ConversationMessage;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    #v0=(Reference);
    return-object v0
.end method

.method public getMessageTransforms(Lcom/android/mail/providers/Message;)Ljava/lang/String;
    .locals 1
    .parameter "msg"

    .prologue
    .line 223
    const/4 v0, 0x0

    #v0=(Null);
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mConversationHeaderView:Lcom/android/mail/browse/ConversationViewHeader;

    #v3=(Reference);
    invoke-interface {v2, v3}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->setupConversationHeaderView(Lcom/android/mail/browse/ConversationViewHeader;)V

    .line 118
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v2}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 120
    .local v0, fragment:Landroid/app/Fragment;
    #v0=(Reference);
    new-instance v2, Lcom/android/mail/FormattedDateBuilder;

    #v2=(UninitRef);
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/mail/FormattedDateBuilder;-><init>(Landroid/content/Context;)V

    #v2=(Reference);
    iput-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

    .line 121
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v3}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getConversationAccountController()Lcom/android/mail/browse/ConversationAccountController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    #v4=(Reference);
    invoke-interface {v4}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getAddressCache()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mail/browse/MessageHeaderView;->initialize(Lcom/android/mail/browse/ConversationAccountController;Ljava/util/Map;)V

    .line 123
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Lcom/android/mail/browse/MessageHeaderView;->setExpandMode(I)V

    .line 124
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getContactInfoSource()Lcom/android/mail/ContactInfoSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mail/browse/MessageHeaderView;->setContactInfoSource(Lcom/android/mail/ContactInfoSource;)V

    .line 125
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v2, p0}, Lcom/android/mail/browse/MessageHeaderView;->setCallbacks(Lcom/android/mail/browse/MessageHeaderView$MessageHeaderViewCallbacks;)V

    .line 126
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Lcom/android/mail/browse/MessageHeaderView;->setExpandable(Z)V

    .line 127
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    #v3=(Reference);
    invoke-interface {v3}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->isViewOnlyMode()Z

    move-result v3

    #v3=(Boolean);
    invoke-virtual {v2, v3}, Lcom/android/mail/browse/MessageHeaderView;->setViewOnlyMode(Z)V

    .line 129
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    #v3=(Reference);
    invoke-interface {v2, v3}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->setupMessageHeaderVeiledMatcher(Lcom/android/mail/browse/MessageHeaderView;)V

    .line 131
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageFooterView:Lcom/android/mail/browse/MessageFooterView;

    invoke-virtual {v0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mail/browse/MessageFooterView;->initialize(Landroid/app/LoaderManager;Landroid/app/FragmentManager;)V

    .line 133
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v2}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->startMessageLoader()V

    .line 135
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mProgressController:Lcom/android/mail/ui/ConversationViewProgressController;

    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v3}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->isViewVisibleToUser()Z

    move-result v3

    #v3=(Boolean);
    invoke-virtual {v2, v3}, Lcom/android/mail/ui/ConversationViewProgressController;->showLoadingStatus(Z)V

    .line 137
    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v2}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 138
    .local v1, r:Landroid/content/res/Resources;
    #v1=(Reference);
    const v2, 0x7f09001b

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    #v2=(Float);
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    #v3=(Reference);
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    #v3=(Integer);
    div-float/2addr v2, v3

    float-to-int v2, v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mSideMarginInWebPx:I

    .line 140
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 74
    #v6=(Null);
    const v3, 0x7f040062

    #v3=(Integer);
    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 75
    .local v1, rootView:Landroid/view/View;
    #v1=(Reference);
    const v3, 0x7f080131

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/browse/MessageScrollView;

    iput-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mScrollView:Lcom/android/mail/browse/MessageScrollView;

    .line 76
    const v3, 0x7f080132

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/browse/ConversationViewHeader;

    iput-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mConversationHeaderView:Lcom/android/mail/browse/ConversationViewHeader;

    .line 77
    const v3, 0x7f080134

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/browse/MessageHeaderView;

    iput-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    .line 78
    const v3, 0x7f080135

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/browse/MessageFooterView;

    iput-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageFooterView:Lcom/android/mail/browse/MessageFooterView;

    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0031

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 86
    .local v0, color:I
    #v0=(Integer);
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v3, v0}, Lcom/android/mail/browse/MessageHeaderView;->setBackgroundColor(I)V

    .line 87
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageFooterView:Lcom/android/mail/browse/MessageFooterView;

    invoke-virtual {v3, v0}, Lcom/android/mail/browse/MessageFooterView;->setBackgroundColor(I)V

    .line 89
    const v3, 0x7f080133

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/browse/BorderView;

    invoke-virtual {v3}, Lcom/android/mail/browse/BorderView;->disableCardBottomBorder()V

    .line 90
    const v3, 0x7f080136

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/browse/BorderView;

    invoke-virtual {v3}, Lcom/android/mail/browse/BorderView;->disableCardTopBorder()V

    .line 92
    new-instance v3, Lcom/android/mail/ui/ConversationViewProgressController;

    #v3=(UninitRef);
    iget-object v4, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    #v4=(Reference);
    invoke-interface {v4}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    #v5=(Reference);
    invoke-interface {v5}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/mail/ui/ConversationViewProgressController;-><init>(Landroid/app/Fragment;Landroid/os/Handler;)V

    #v3=(Reference);
    iput-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mProgressController:Lcom/android/mail/ui/ConversationViewProgressController;

    .line 94
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mProgressController:Lcom/android/mail/ui/ConversationViewProgressController;

    invoke-virtual {v3, v1}, Lcom/android/mail/ui/ConversationViewProgressController;->instantiateProgressIndicators(Landroid/view/View;)V

    .line 95
    const v3, 0x7f0800f4

    #v3=(Integer);
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/mail/browse/MessageWebView;

    iput-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mWebView:Lcom/android/mail/browse/MessageWebView;

    .line 96
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mWebView:Lcom/android/mail/browse/MessageWebView;

    const/4 v4, 0x2

    #v4=(PosByte);
    invoke-virtual {v3, v4}, Lcom/android/mail/browse/MessageWebView;->setOverScrollMode(I)V

    .line 97
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mWebView:Lcom/android/mail/browse/MessageWebView;

    iget-object v4, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    #v4=(Reference);
    invoke-interface {v4}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getWebViewClient()Lcom/android/mail/ui/AbstractConversationWebViewClient;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mail/browse/MessageWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mWebView:Lcom/android/mail/browse/MessageWebView;

    invoke-virtual {v3, v6}, Lcom/android/mail/browse/MessageWebView;->setFocusable(Z)V

    .line 99
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mWebView:Lcom/android/mail/browse/MessageWebView;

    invoke-virtual {v3}, Lcom/android/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 101
    .local v2, settings:Landroid/webkit/WebSettings;
    #v2=(Reference);
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 102
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 104
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v3}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/mail/utils/ConversationViewUtils;->setTextZoom(Landroid/content/res/Resources;Landroid/webkit/WebSettings;)V

    .line 106
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 107
    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 108
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 110
    iget-object v3, p0, Lcom/android/mail/ui/SecureConversationViewController;->mScrollView:Lcom/android/mail/browse/MessageScrollView;

    iget-object v4, p0, Lcom/android/mail/ui/SecureConversationViewController;->mWebView:Lcom/android/mail/browse/MessageWebView;

    invoke-virtual {v3, v4}, Lcom/android/mail/browse/MessageScrollView;->setInnerScrollableView(Lcom/android/mail/browse/MessageScrollView$Touchable;)V

    .line 112
    return-object v1
.end method

.method public renderMessage(Lcom/android/mail/browse/ConversationMessage;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v8, 0x1

    #v8=(One);
    const/4 v9, 0x0

    .line 148
    #v9=(Null);
    iput-object p1, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    .line 150
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mWebView:Lcom/android/mail/browse/MessageWebView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    #v1=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    iget-boolean v0, v0, Lcom/android/mail/providers/Message;->alwaysShowImages:Z

    #v0=(Boolean);
    if-nez v0, :cond_1

    move v0, v8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    const-string v0, "<body style=\"margin: 0 %spx;\"><div style=\"margin: 16px 0; font-size: 80%%\">"

    #v0=(Reference);
    new-array v1, v8, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mSideMarginInWebPx:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    aput-object v2, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v6, dataBuilder:Ljava/lang/StringBuilder;
    #v6=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationMessage;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v0, "</div></body>"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mWebView:Lcom/android/mail/browse/MessageWebView;

    iget-object v1, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v1}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getBaseUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    #v3=(Reference);
    const-string v4, "utf-8"

    #v4=(Reference);
    invoke-virtual/range {v0 .. v5}, Lcom/android/mail/browse/MessageWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mDateBuilder:Lcom/android/mail/FormattedDateBuilder;

    iget-object v1, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    iget-object v2, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    iget-boolean v2, v2, Lcom/android/mail/providers/Message;->alwaysShowImages:Z

    #v2=(Boolean);
    invoke-static {v5, v0, v1, v8, v2}, Lcom/android/mail/browse/ConversationViewAdapter;->newMessageHeaderItem(Lcom/android/mail/browse/ConversationViewAdapter;Lcom/android/mail/FormattedDateBuilder;Lcom/android/mail/browse/ConversationMessage;ZZ)Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;

    move-result-object v7

    .line 164
    .local v7, item:Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    #v7=(Reference);
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v0}, Lcom/android/mail/browse/MessageHeaderView;->unbind()V

    .line 165
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageHeaderView:Lcom/android/mail/browse/MessageHeaderView;

    invoke-virtual {v0, v7, v9}, Lcom/android/mail/browse/MessageHeaderView;->bind(Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;Z)V

    .line 166
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessage:Lcom/android/mail/browse/ConversationMessage;

    iget-boolean v0, v0, Lcom/android/mail/providers/Message;->hasAttachments:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageFooterView:Lcom/android/mail/browse/MessageFooterView;

    #v0=(Reference);
    invoke-virtual {v0, v9}, Lcom/android/mail/browse/MessageFooterView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mMessageFooterView:Lcom/android/mail/browse/MessageFooterView;

    iget-object v1, p0, Lcom/android/mail/ui/SecureConversationViewController;->mCallbacks:Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;

    invoke-interface {v1}, Lcom/android/mail/ui/SecureConversationViewControllerCallbacks;->getAccountUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v7, v1, v9}, Lcom/android/mail/browse/MessageFooterView;->bind(Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;Landroid/net/Uri;Z)V

    .line 170
    :cond_0
    #v0=(Conflicted);
    return-void

    .end local v6           #dataBuilder:Ljava/lang/StringBuilder;
    .end local v7           #item:Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;
    :cond_1
    #v0=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Uninit);
    move v0, v9

    .line 150
    #v0=(Null);
    goto :goto_0
.end method

.method public setMessageDetailsExpanded(Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;ZI)V
    .locals 0
    .parameter "i"
    .parameter "expanded"
    .parameter "heightBefore"

    .prologue
    .line 204
    return-void
.end method

.method public setMessageExpanded(Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;III)V
    .locals 0
    .parameter "item"
    .parameter "newSpacerHeight"
    .parameter "topBorderHeight"
    .parameter "bottomBorderHeight"

    .prologue
    .line 199
    return-void
.end method

.method public setMessageSpacerHeight(Lcom/android/mail/browse/ConversationViewAdapter$MessageHeaderItem;I)V
    .locals 0
    .parameter "item"
    .parameter "newSpacerHeight"

    .prologue
    .line 193
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .parameter "subject"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mConversationHeaderView:Lcom/android/mail/browse/ConversationViewHeader;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/mail/browse/ConversationViewHeader;->setSubject(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public showExternalResources(Lcom/android/mail/providers/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mWebView:Lcom/android/mail/browse/MessageWebView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 209
    return-void
.end method

.method public showExternalResources(Ljava/lang/String;)V
    .locals 2
    .parameter "rawSenderAddress"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/mail/ui/SecureConversationViewController;->mWebView:Lcom/android/mail/browse/MessageWebView;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/MessageWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 214
    return-void
.end method
