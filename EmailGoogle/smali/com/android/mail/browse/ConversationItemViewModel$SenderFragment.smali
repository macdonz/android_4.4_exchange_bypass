.class Lcom/android/mail/browse/ConversationItemViewModel$SenderFragment;
.super Ljava/lang/Object;
.source "ConversationItemViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationItemViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SenderFragment"
.end annotation


# instance fields
.field ellipsizedText:Ljava/lang/String;

.field end:I

.field isFixed:Z

.field shouldDisplay:Z

.field start:I

.field style:Landroid/text/style/CharacterStyle;

.field width:I


# direct methods
.method constructor <init>(IILjava/lang/CharSequence;Landroid/text/style/CharacterStyle;Z)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "sendersText"
    .parameter "style"
    .parameter "isFixed"

    .prologue
    .line 291
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 292
    #p0=(Reference);
    iput p1, p0, Lcom/android/mail/browse/ConversationItemViewModel$SenderFragment;->start:I

    .line 293
    iput p2, p0, Lcom/android/mail/browse/ConversationItemViewModel$SenderFragment;->end:I

    .line 294
    iput-object p4, p0, Lcom/android/mail/browse/ConversationItemViewModel$SenderFragment;->style:Landroid/text/style/CharacterStyle;

    .line 295
    iput-boolean p5, p0, Lcom/android/mail/browse/ConversationItemViewModel$SenderFragment;->isFixed:Z

    .line 296
    return-void
.end method
