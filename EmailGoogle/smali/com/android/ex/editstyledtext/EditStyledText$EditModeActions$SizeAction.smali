.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SizeAction"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3327
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected doSelectionIsFixed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3330
    #v1=(One);
    invoke-super {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->doSelectionIsFixed()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 3334
    :goto_0
    #v0=(Conflicted);
    return v1

    .line 3333
    :cond_0
    #v0=(Boolean);
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$3900(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$4900(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    goto :goto_0
.end method

.method protected doSelectionIsFixedAndWaitingInput()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 3339
    #v3=(Null);
    invoke-super {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->doSelectionIsFixedAndWaitingInput()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 3351
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return v4

    .line 3342
    :cond_0
    #v0=(Uninit);v1=(Boolean);v2=(Uninit);
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getColorWaitInput()I

    move-result v0

    .line 3343
    .local v0, color:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getSizeWaitInput()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v1, v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setItemSize(IZ)V

    .line 3344
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 3345
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->setItemColor(IZ)V

    .line 3346
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    goto :goto_0

    .line 3348
    :cond_1
    #v1=(Boolean);
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->fixSelection()Z

    .line 3349
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SizeAction;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$3900(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;->access$4900(Lcom/android/ex/editstyledtext/EditStyledText$StyledTextDialog;)V

    goto :goto_0
.end method
