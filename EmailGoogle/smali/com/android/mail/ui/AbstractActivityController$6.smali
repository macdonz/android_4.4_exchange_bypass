.class Lcom/android/mail/ui/AbstractActivityController$6;
.super Lcom/android/mail/utils/ContentProviderTask;
.source "AbstractActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AbstractActivityController;->doMarkConversationMessagesUnread(Lcom/android/mail/providers/Conversation;Ljava/util/Set;[B)V
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
    .line 1658
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$6;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct {p0}, Lcom/android/mail/utils/ContentProviderTask;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/android/mail/utils/ContentProviderTask$Result;)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x0

    .line 1661
    #v4=(Null);
    iget-object v0, p1, Lcom/android/mail/utils/ContentProviderTask$Result;->exception:Ljava/lang/Exception;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 1662
    sget-object v0, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/mail/utils/ContentProviderTask$Result;->exception:Ljava/lang/Exception;

    #v1=(Reference);
    const-string v2, "ContentProviderTask() ERROR."

    #v2=(Reference);
    new-array v3, v4, [Ljava/lang/Object;

    #v3=(Reference);
    invoke-static {v0, v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1667
    :goto_0
    return-void

    .line 1664
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    sget-object v0, Lcom/android/mail/ui/AbstractActivityController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ContentProviderTask(): success %s"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    iget-object v3, p1, Lcom/android/mail/utils/ContentProviderTask$Result;->results:[Landroid/content/ContentProviderResult;

    #v3=(Reference);
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1658
    check-cast p1, Lcom/android/mail/utils/ContentProviderTask$Result;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/AbstractActivityController$6;->onPostExecute(Lcom/android/mail/utils/ContentProviderTask$Result;)V

    return-void
.end method
