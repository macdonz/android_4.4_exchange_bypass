.class Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;
.super Landroid/database/DataSetObserver;
.source "ConversationPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/browse/ConversationPagerAdapter;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/ConversationPagerAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;->this$0:Lcom/android/mail/browse/ConversationPagerAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/ConversationPagerAdapter;Lcom/android/mail/browse/ConversationPagerAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;-><init>(Lcom/android/mail/browse/ConversationPagerAdapter;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/mail/browse/ConversationPagerAdapter$ListObserver;->this$0:Lcom/android/mail/browse/ConversationPagerAdapter;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/mail/browse/ConversationPagerAdapter;->notifyDataSetChanged()V

    .line 492
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method
