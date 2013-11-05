.class Lcom/android/mail/ui/ConversationListFragment$4;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mail/ui/AnimatedAdapter$ConversationListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/android/mail/ui/ConversationListFragment$4;->this$0:Lcom/android/mail/ui/ConversationListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public isExitingSelectionMode()Z
    .locals 6

    .prologue
    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    iget-object v2, p0, Lcom/android/mail/ui/ConversationListFragment$4;->this$0:Lcom/android/mail/ui/ConversationListFragment;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/mail/ui/ConversationListFragment;->access$700(Lcom/android/mail/ui/ConversationListFragment;)J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    invoke-static {}, Lcom/android/mail/ui/ConversationListFragment;->access$800()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    #v0=(Byte);
    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Byte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
