.class Lcom/android/email/activity/setup/AccountSetupNames$3;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "AccountSetupNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupNames;->prefillNameFromProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupNames;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupNames;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupNames$3;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .parameter "params"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v3, 0x0

    .line 150
    #v3=(Null);
    const/4 v0, 0x1

    #v0=(One);
    new-array v2, v0, [Ljava/lang/String;

    #v2=(Reference);
    const-string v0, "display_name"

    #v0=(Reference);
    aput-object v0, v2, v6

    .line 151
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames$3;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    invoke-static {}, Lcom/android/email/activity/setup/AccountSetupNames;->access$200()Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupNames$3;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupNames$3;->this$0:Lcom/android/email/activity/setup/AccountSetupNames;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupNames;->access$300(Lcom/android/email/activity/setup/AccountSetupNames;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method
