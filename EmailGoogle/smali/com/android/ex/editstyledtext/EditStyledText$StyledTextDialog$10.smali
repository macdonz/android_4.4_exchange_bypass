.class Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$10;
.super Ljava/lang/Object;
.source "EditStyledText.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->onShowAlignAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;


# direct methods
.method constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 2299
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$10;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2301
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 2302
    .local v0, align:Landroid/text/Layout$Alignment;
    #v0=(Reference);
    packed-switch p2, :pswitch_data_0

    .line 2313
    const-string v1, "EditStyledText"

    #v1=(Reference);
    const-string v2, "--- onShowAlignAlertDialog: got illigal align."

    #v2=(Reference);
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog$10;->this$0:Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$1300(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->setAlignment(Landroid/text/Layout$Alignment;)V

    .line 2317
    return-void

    .line 2304
    :pswitch_0
    #v1=(Uninit);v2=(Uninit);
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 2305
    goto :goto_0

    .line 2307
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2308
    goto :goto_0

    .line 2310
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 2311
    goto :goto_0

    .line 2302
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method