.class Lcom/android/mail/browse/SuperCollapsedBlock$1;
.super Ljava/lang/Object;
.source "SuperCollapsedBlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/browse/SuperCollapsedBlock;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/SuperCollapsedBlock;


# direct methods
.method constructor <init>(Lcom/android/mail/browse/SuperCollapsedBlock;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/mail/browse/SuperCollapsedBlock$1;->this$0:Lcom/android/mail/browse/SuperCollapsedBlock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/mail/browse/SuperCollapsedBlock$1;->this$0:Lcom/android/mail/browse/SuperCollapsedBlock;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/browse/SuperCollapsedBlock;->access$100(Lcom/android/mail/browse/SuperCollapsedBlock;)Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/SuperCollapsedBlock$1;->this$0:Lcom/android/mail/browse/SuperCollapsedBlock;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/browse/SuperCollapsedBlock;->access$000(Lcom/android/mail/browse/SuperCollapsedBlock;)Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;->onSuperCollapsedClick(Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;)V

    .line 88
    return-void
.end method
