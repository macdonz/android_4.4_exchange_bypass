.class public Lcom/android/mail/ui/AbstractConversationWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AbstractConversationWebViewClient.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccount:Lcom/android/mail/providers/Account;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/providers/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 51
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/android/mail/providers/Account;

    .line 52
    return-void
.end method

.method private generateProxyIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 11
    .parameter "uri"

    .prologue
    .line 100
    new-instance v3, Landroid/content/Intent;

    #v3=(UninitRef);
    const-string v8, "android.intent.action.VIEW"

    #v8=(Reference);
    iget-object v9, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/android/mail/providers/Account;

    #v9=(Reference);
    iget-object v9, v9, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .local v3, intent:Landroid/content/Intent;
    #v3=(Reference);
    const-string v8, "original_uri"

    invoke-virtual {v3, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 102
    const-string v8, "account"

    iget-object v9, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/android/mail/providers/Account;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    const/4 v4, 0x0

    .line 108
    .local v4, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    #v4=(Null);
    iget-object v8, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 113
    :goto_0
    #v1=(Conflicted);v4=(Reference);v10=(Conflicted);
    if-eqz v4, :cond_1

    .line 115
    const/high16 v8, 0x1

    #v8=(Integer);
    invoke-virtual {v4, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 118
    .local v7, resolvedActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    #v7=(Reference);
    iget-object v8, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    #v8=(Reference);
    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, packageName:Ljava/lang/String;
    #v5=(Reference);
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Conflicted);v2=(Reference);v6=(Conflicted);v8=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 125
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 126
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    #v0=(Reference);
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #v8=(Reference);
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    #v8=(Boolean);
    if-eqz v8, :cond_0

    .line 127
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #v8=(Reference);
    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v7           #resolvedActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-object v3

    .line 109
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Null);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Reference);v10=(Uninit);
    move-exception v1

    .line 110
    .local v1, e:Ljava/lang/UnsupportedOperationException;
    #v1=(Reference);
    sget-object v8, Lcom/android/mail/ui/AbstractConversationWebViewClient;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Error getting package manager"

    const/4 v10, 0x0

    #v10=(Null);
    new-array v10, v10, [Ljava/lang/Object;

    #v10=(Reference);
    invoke-static {v8, v1, v9, v10}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method


# virtual methods
.method public setAccount(Lcom/android/mail/providers/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/android/mail/providers/Account;

    .line 56
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    .line 60
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter "view"
    .parameter "url"

    .prologue
    .line 68
    iget-object v3, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    #v3=(Reference);
    if-nez v3, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 96
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v4=(Conflicted);
    return v1

    .line 72
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v4=(Uninit);
    const/4 v1, 0x0

    .line 74
    .local v1, result:Z
    #v1=(Null);
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 75
    .local v2, uri:Landroid/net/Uri;
    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/android/mail/providers/Account;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/android/mail/providers/Account;

    iget-object v3, v3, Lcom/android/mail/providers/Account;->viewIntentProxyUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_1

    .line 76
    invoke-direct {p0, v2}, Lcom/android/mail/ui/AbstractConversationWebViewClient;->generateProxyIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    .local v0, intent:Landroid/content/Intent;
    :goto_1
    #v0=(Reference);v3=(Conflicted);v4=(Conflicted);
    const/high16 v3, 0x9

    :try_start_0
    #v3=(Integer);
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    iget-object v3, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    #v3=(Reference);
    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0

    .line 78
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    #v0=(Uninit);v1=(Null);v3=(Conflicted);v4=(Uninit);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v3, "android.intent.action.VIEW"

    #v3=(Reference);
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    .restart local v0       #intent:Landroid/content/Intent;
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mAccount:Lcom/android/mail/providers/Account;

    invoke-static {v0, v3}, Lcom/android/mail/utils/Utils;->addAccountToMailtoIntent(Landroid/content/Intent;Lcom/android/mail/providers/Account;)V

    .line 83
    const-string v3, "com.android.browser.application_id"

    iget-object v4, p0, Lcom/android/mail/ui/AbstractConversationWebViewClient;->mActivity:Landroid/app/Activity;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 91
    :catch_0
    #v3=(Conflicted);v4=(Conflicted);
    move-exception v3

    #v3=(Reference);
    goto :goto_0
.end method
