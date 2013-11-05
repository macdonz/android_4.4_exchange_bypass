.class Lcom/android/mail/ui/AbstractActivityController$15;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AbstractActivityController;->getStorageErrorClickedListener()Lcom/android/mail/ui/ActionableToastBar$ActionClickedListener;
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
    .line 3976
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$15;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onActionClicked(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 3979
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$15;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/AbstractActivityController;->access$3400(Lcom/android/mail/ui/AbstractActivityController;)V

    .line 3980
    return-void
.end method
