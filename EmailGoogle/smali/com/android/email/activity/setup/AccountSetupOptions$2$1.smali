.class Lcom/android/email/activity/setup/AccountSetupOptions$2$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions$2;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupOptions$2;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions$2;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptions$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$2$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptions$2;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptions$2;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$100(Lcom/android/email/activity/setup/AccountSetupOptions;)V

    .line 284
    return-void
.end method
