.class Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;
.super Ljava/lang/Object;
.source "ConversationViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailJsBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationViewFragment;


# direct methods
.method private constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/ConversationViewFragment;Lcom/android/mail/ui/ConversationViewFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;-><init>(Lcom/android/mail/ui/ConversationViewFragment;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getMessageBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "domId"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1164
    :try_start_0
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/android/mail/browse/MessageCursor;

    move-result-object v0

    .line 1165
    .local v0, cursor:Lcom/android/mail/browse/MessageCursor;
    #v0=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    iget-boolean v4, v4, Lcom/android/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    #v4=(Boolean);
    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 1166
    :cond_0
    const-string v4, ""

    .line 1181
    .end local v0           #cursor:Lcom/android/mail/browse/MessageCursor;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Conflicted);v6=(Conflicted);
    return-object v4

    .line 1169
    .restart local v0       #cursor:Lcom/android/mail/browse/MessageCursor;
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);
    const/4 v2, -0x1

    .line 1170
    .local v2, pos:I
    :cond_2
    #v1=(Conflicted);v2=(Integer);
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1171
    invoke-virtual {v0}, Lcom/android/mail/browse/MessageCursor;->getMessage()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    .line 1172
    .local v1, msg:Lcom/android/mail/browse/ConversationMessage;
    #v1=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/ui/ConversationViewFragment;->mTemplates:Lcom/android/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v4, v1}, Lcom/android/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/android/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 1173
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationMessage;->getBodyAsHtml()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    goto :goto_0

    .line 1177
    .end local v1           #msg:Lcom/android/mail/browse/ConversationMessage;
    :cond_3
    #v1=(Conflicted);v4=(Boolean);
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #v4=(Reference);
    goto :goto_0

    .line 1179
    .end local v0           #cursor:Lcom/android/mail/browse/MessageCursor;
    .end local v2           #pos:I
    :catch_0
    move-exception v3

    .line 1180
    .local v3, t:Ljava/lang/Throwable;
    #v3=(Reference);
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    const-string v5, "Error in MailJsBridge.getMessageBody"

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v3, v5, v6}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1181
    const-string v4, ""

    goto :goto_0
.end method

.method public getMessageSender(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "domId"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1189
    :try_start_0
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/mail/ui/ConversationViewFragment;->getMessageCursor()Lcom/android/mail/browse/MessageCursor;

    move-result-object v0

    .line 1190
    .local v0, cursor:Lcom/android/mail/browse/MessageCursor;
    #v0=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    iget-boolean v4, v4, Lcom/android/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    #v4=(Boolean);
    if-eqz v4, :cond_0

    if-nez v0, :cond_1

    .line 1191
    :cond_0
    const-string v4, ""

    .line 1206
    .end local v0           #cursor:Lcom/android/mail/browse/MessageCursor;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Conflicted);v6=(Conflicted);
    return-object v4

    .line 1194
    .restart local v0       #cursor:Lcom/android/mail/browse/MessageCursor;
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Boolean);v5=(Uninit);v6=(Uninit);
    const/4 v2, -0x1

    .line 1195
    .local v2, pos:I
    :cond_2
    #v1=(Conflicted);v2=(Integer);
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/mail/browse/MessageCursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1196
    invoke-virtual {v0}, Lcom/android/mail/browse/MessageCursor;->getMessage()Lcom/android/mail/browse/ConversationMessage;

    move-result-object v1

    .line 1197
    .local v1, msg:Lcom/android/mail/browse/ConversationMessage;
    #v1=(Reference);
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/mail/ui/ConversationViewFragment;->mTemplates:Lcom/android/mail/ui/HtmlConversationTemplates;

    invoke-virtual {v4, v1}, Lcom/android/mail/ui/HtmlConversationTemplates;->getMessageDomId(Lcom/android/mail/ui/HtmlMessage;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 1198
    iget-object v4, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v4=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/ConversationMessage;->getFrom()Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/mail/ui/ConversationViewFragment;->getAddress(Ljava/lang/String;)Lcom/android/mail/providers/Address;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mail/providers/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1202
    .end local v1           #msg:Lcom/android/mail/browse/ConversationMessage;
    :cond_3
    #v1=(Conflicted);v4=(Boolean);v5=(Uninit);
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #v4=(Reference);
    goto :goto_0

    .line 1204
    .end local v0           #cursor:Lcom/android/mail/browse/MessageCursor;
    .end local v2           #pos:I
    :catch_0
    move-exception v3

    .line 1205
    .local v3, t:Ljava/lang/Throwable;
    #v3=(Reference);
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    const-string v5, "Error in MailJsBridge.getMessageSender"

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    new-array v6, v6, [Ljava/lang/Object;

    #v6=(Reference);
    invoke-static {v4, v3, v5, v6}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1206
    const-string v4, ""

    goto :goto_0
.end method

.method public getScrollYPercent()F
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1238
    :try_start_0
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/ui/ConversationViewFragment;->access$1200(Lcom/android/mail/ui/ConversationViewFragment;)F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1241
    :goto_0
    #v0=(Conflicted);v1=(Float);v2=(Conflicted);v3=(Conflicted);
    return v1

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, t:Ljava/lang/Throwable;
    #v0=(Reference);
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "Error in MailJsBridge.getScrollYPercent"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1241
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method public getTempMessageBodies()Ljava/lang/String;
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1147
    :try_start_0
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v2=(Reference);
    iget-boolean v2, v2, Lcom/android/mail/ui/ConversationViewFragment;->mViewsCreated:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 1148
    const-string v0, ""

    .line 1156
    :goto_0
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-object v0

    .line 1151
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Boolean);v3=(Uninit);v4=(Uninit);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/ConversationViewFragment;->access$1100(Lcom/android/mail/ui/ConversationViewFragment;)Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, s:Ljava/lang/String;
    #v0=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {v2, v3}, Lcom/android/mail/ui/ConversationViewFragment;->access$1102(Lcom/android/mail/ui/ConversationViewFragment;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1154
    .end local v0           #s:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1155
    .local v1, t:Ljava/lang/Throwable;
    #v1=(Reference);
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    const-string v3, "Error in MailJsBridge.getTempMessageBodies"

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    invoke-static {v2, v1, v3, v4}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1156
    const-string v0, ""

    #v0=(Reference);
    goto :goto_0
.end method

.method public onContentReady()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$2;

    #v1=(UninitRef);
    const-string v2, "onContentReady"

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v3=(Reference);
    invoke-direct {v1, p0, v2, v3}, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$2;-><init>(Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1232
    return-void
.end method

.method public onMessageTransform(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "messageDomId"
    .parameter "transformText"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1249
    :try_start_0
    #v5=(Null);
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "TRANSFORM: (%s) %s"

    #v2=(Reference);
    const/4 v3, 0x2

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object p1, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1250
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-static {v1}, Lcom/android/mail/ui/ConversationViewFragment;->access$1300(Lcom/android/mail/ui/ConversationViewFragment;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    iget-object v1, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    invoke-virtual {v1}, Lcom/android/mail/ui/ConversationViewFragment;->onConversationTransformed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    :goto_0
    #v0=(Conflicted);v4=(Conflicted);
    return-void

    .line 1252
    :catch_0
    #v0=(Uninit);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v0

    .line 1253
    .local v0, t:Ljava/lang/Throwable;
    #v0=(Reference);
    invoke-static {}, Lcom/android/mail/ui/ConversationViewFragment;->access$100()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "Error in MailJsBridge.onMessageTransform"

    #v2=(Reference);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v1, v0, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public onWebContentGeometryChange([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "overlayTopStrs"
    .parameter "overlayBottomStrs"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/ConversationViewFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    #v6=(Reference);
    new-instance v0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;

    #v0=(UninitRef);
    const-string v2, "onWebContentGeometryChange"

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;->this$0:Lcom/android/mail/ui/ConversationViewFragment;

    #v3=(Reference);
    move-object v1, p0

    #v1=(Reference);
    move-object v4, p1

    #v4=(Reference);
    move-object v5, p2

    #v5=(Reference);
    invoke-direct/range {v0 .. v5}, Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge$1;-><init>(Lcom/android/mail/ui/ConversationViewFragment$MailJsBridge;Ljava/lang/String;Landroid/app/Fragment;[Ljava/lang/String;[Ljava/lang/String;)V

    #v0=(Reference);
    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1141
    return-void
.end method
