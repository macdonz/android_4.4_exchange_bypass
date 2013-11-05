.class public Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;
.super Lcom/android/mail/browse/ConversationOverlayItem;
.source "ConversationViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperCollapsedBlockItem"
.end annotation


# instance fields
.field private mEnd:I

.field private final mStart:I

.field final synthetic this$0:Lcom/android/mail/browse/ConversationViewAdapter;


# direct methods
.method private constructor <init>(Lcom/android/mail/browse/ConversationViewAdapter;II)V
    .locals 0
    .parameter
    .parameter "start"
    .parameter "end"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->this$0:Lcom/android/mail/browse/ConversationViewAdapter;

    invoke-direct {p0}, Lcom/android/mail/browse/ConversationOverlayItem;-><init>()V

    .line 324
    #p0=(Reference);
    iput p2, p0, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->mStart:I

    .line 325
    iput p3, p0, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->mEnd:I

    .line 326
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/ConversationViewAdapter;IILcom/android/mail/browse/ConversationViewAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;-><init>(Lcom/android/mail/browse/ConversationViewAdapter;II)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "measureOnly"

    .prologue
    .line 343
    move-object v0, p1

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/SuperCollapsedBlock;

    .line 344
    .local v0, scb:Lcom/android/mail/browse/SuperCollapsedBlock;
    invoke-virtual {v0, p0}, Lcom/android/mail/browse/SuperCollapsedBlock;->bind(Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;)V

    .line 345
    return-void
.end method

.method public canPushSnapHeader()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public createView(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "inflater"
    .parameter "parent"

    .prologue
    .line 335
    const v1, 0x7f040066

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/SuperCollapsedBlock;

    .line 337
    .local v0, scb:Lcom/android/mail/browse/SuperCollapsedBlock;
    iget-object v1, p0, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->this$0:Lcom/android/mail/browse/ConversationViewAdapter;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/mail/browse/ConversationViewAdapter;->access$800(Lcom/android/mail/browse/ConversationViewAdapter;)Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mail/browse/SuperCollapsedBlock;->initialize(Lcom/android/mail/browse/SuperCollapsedBlock$OnClickListener;)V

    .line 338
    return-object v0
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->mEnd:I

    #v0=(Integer);
    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/android/mail/browse/ConversationViewAdapter$SuperCollapsedBlockItem;->mStart:I

    #v0=(Integer);
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x3

    #v0=(PosByte);
    return v0
.end method

.method public isContiguous()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method
