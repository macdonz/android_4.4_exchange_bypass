.class Lcom/android/mail/ui/AbstractActivityController$8;
.super Ljava/lang/Object;
.source "AbstractActivityController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AbstractActivityController;->markConversationsRead(Ljava/util/Collection;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AbstractActivityController;

.field final synthetic val$markViewed:Z

.field final synthetic val$read:Z

.field final synthetic val$showNext:Z

.field final synthetic val$targets:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AbstractActivityController;Ljava/util/Collection;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1699
    iput-object p1, p0, Lcom/android/mail/ui/AbstractActivityController$8;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    iput-object p2, p0, Lcom/android/mail/ui/AbstractActivityController$8;->val$targets:Ljava/util/Collection;

    iput-boolean p3, p0, Lcom/android/mail/ui/AbstractActivityController$8;->val$read:Z

    iput-boolean p4, p0, Lcom/android/mail/ui/AbstractActivityController$8;->val$markViewed:Z

    iput-boolean p5, p0, Lcom/android/mail/ui/AbstractActivityController$8;->val$showNext:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/mail/ui/AbstractActivityController$8;->this$0:Lcom/android/mail/ui/AbstractActivityController;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/ui/AbstractActivityController$8;->val$targets:Ljava/util/Collection;

    #v1=(Reference);
    iget-boolean v2, p0, Lcom/android/mail/ui/AbstractActivityController$8;->val$read:Z

    #v2=(Boolean);
    iget-boolean v3, p0, Lcom/android/mail/ui/AbstractActivityController$8;->val$markViewed:Z

    #v3=(Boolean);
    iget-boolean v4, p0, Lcom/android/mail/ui/AbstractActivityController$8;->val$showNext:Z

    #v4=(Boolean);
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mail/ui/AbstractActivityController;->access$400(Lcom/android/mail/ui/AbstractActivityController;Ljava/util/Collection;ZZZ)V

    .line 1703
    return-void
.end method
