.class Lcom/android/email/provider/EmailProvider$3;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/provider/EmailProvider;->notifyUIFolder(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 5036
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$3;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x1

    .line 5039
    #v5=(One);
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    .line 5040
    .local v0, folderId:Ljava/lang/String;
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->access$300()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const-string v2, "Notifying conversation Uri %s twice"

    #v2=(Reference);
    new-array v3, v5, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 5041
    iget-object v1, p0, Lcom/android/email/provider/EmailProvider$3;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-static {}, Lcom/android/email/provider/EmailProvider;->access$400()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/email/provider/EmailProvider;->access$500(Lcom/android/email/provider/EmailProvider;Landroid/net/Uri;Ljava/lang/String;)V

    .line 5042
    return v5
.end method
