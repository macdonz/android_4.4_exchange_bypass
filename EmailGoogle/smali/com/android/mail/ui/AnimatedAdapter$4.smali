.class Lcom/android/mail/ui/AnimatedAdapter$4;
.super Ljava/lang/Object;
.source "AnimatedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/AnimatedAdapter;->fadeOutLeaveBehindItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/AnimatedAdapter;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/AnimatedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/mail/ui/AnimatedAdapter$4;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/mail/ui/AnimatedAdapter$4;->this$0:Lcom/android/mail/ui/AnimatedAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/ui/AnimatedAdapter;->startFadeOutLeaveBehindItemsAnimations()V

    .line 589
    return-void
.end method
