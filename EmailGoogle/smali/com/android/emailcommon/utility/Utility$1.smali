.class final Lcom/android/emailcommon/utility/Utility$1;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/emailcommon/utility/Utility$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/emailcommon/utility/Utility$1;->val$message:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$1;->val$context:Landroid/content/Context;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/emailcommon/utility/Utility$1;->val$message:Ljava/lang/String;

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 527
    return-void
.end method