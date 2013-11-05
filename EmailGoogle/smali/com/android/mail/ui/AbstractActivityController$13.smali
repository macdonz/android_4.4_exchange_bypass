.class Lcom/android/mail/ui/AbstractActivityController$13;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AbstractActivityController;->getRetryClickedListener(Lcom/android/mail/providers/Folder;)Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;

.field final synthetic val$folder:Lcom/android/mail/providers/Folder;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AbstractActivityController;Lcom/android/mail/providers/Folder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3954
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$13;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/android/mail/ui/AbstractActivityController$13;->val$folder:Lcom/android/mail/providers/Folder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onActionClicked(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 3957
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$13;->val$folder:Lcom/android/mail/providers/Folder;

    #v1=(Reference);
    iget-object v0, v1, Lcom/android/mail/providers/Folder;->refreshUri:Landroid/net/Uri;

    .line 3959
    .local v0, uri:Landroid/net/Uri;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 3960
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$13;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-static {v1, v0}, Lcom/android/mail/ui/AbstractActivityController;->access$3200(Lcom/android/mail/ui/AbstractActivityController;Landroid/net/Uri;)V

    .line 3962
    :cond_0
    return-void
.end method
