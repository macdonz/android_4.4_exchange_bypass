.class public Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;
.super Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetSpanActionBase"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;


# direct methods
.method public constructor <init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V
    .locals 0
    .parameter

    .prologue
    .line 3194
    iput-object p1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-direct {p0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$EditModeActionBase;-><init>(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected doEndPosIsSelected()Z
    .locals 2

    .prologue
    .line 3233
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x5

    #v1=(PosByte);
    if-ne v0, v1, :cond_1

    .line 3235
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v1

    #v1=(Integer);
    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3236
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->fixSelection()Z

    .line 3237
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext()Z

    .line 3238
    const/4 v0, 0x1

    .line 3240
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Integer);v1=(PosByte);
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->doStartPosIsSelected()Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method protected doNotSelected()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    #v0=(One);
    const/4 v1, 0x0

    .line 3197
    #v1=(Null);
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v2

    #v2=(Integer);
    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v2

    #v2=(Integer);
    const/4 v3, 0x5

    #v3=(PosByte);
    if-ne v2, v3, :cond_1

    .line 3199
    :cond_0
    #v3=(Conflicted);
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v2

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3200
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$1800(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionStart()I

    move-result v2

    #v2=(Integer);
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$1800(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/editstyledtext/EditStyledText;->getSelectionEnd()I

    move-result v3

    #v3=(Integer);
    invoke-static {v1, v2, v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$4500(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;II)V

    .line 3202
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->fixSelection()Z

    .line 3203
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext()Z

    .line 3217
    :goto_0
    #v0=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v0

    .line 3205
    :cond_1
    #v0=(One);v1=(Null);v2=(Integer);v3=(PosByte);v4=(Uninit);
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v2

    #v2=(Integer);
    iget-object v3, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v3=(Reference);
    invoke-static {v3}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v3

    #v3=(Integer);
    if-eq v2, v3, :cond_3

    .line 3206
    const-string v2, "EditModeActions"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "--- setspanactionbase"

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v4}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v4

    #v4=(Integer);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->isWaitInput()Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 3208
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2400(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;)V

    .line 3209
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v2

    #v2=(Integer);
    invoke-static {v1, v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3214
    :goto_1
    #v2=(Conflicted);
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->doNext()Z

    goto :goto_0

    .line 3211
    :cond_2
    #v1=(Null);v2=(Boolean);
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3212
    iget-object v2, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-static {v2}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2100(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    goto :goto_1

    :cond_3
    #v2=(Integer);v3=(Integer);v4=(Uninit);
    move v0, v1

    .line 3217
    #v0=(Null);
    goto/16 :goto_0
.end method

.method protected doSelectionIsFixed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3245
    #v0=(Null);
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->doEndPosIsSelected()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 3246
    const/4 v0, 0x1

    .line 3250
    :goto_0
    #v0=(Boolean);v1=(Conflicted);
    return v0

    .line 3248
    :cond_0
    #v0=(Null);v1=(Boolean);
    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$1800(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/ex/editstyledtext/EditStyledText;->access$900(Lcom/android/ex/editstyledtext/EditStyledText;I)V

    goto :goto_0
.end method

.method protected doStartPosIsSelected()Z
    .locals 2

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    #v0=(Integer);
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->getEditMode()I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x5

    #v1=(PosByte);
    if-ne v0, v1, :cond_1

    .line 3224
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2000(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->access$2200(Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;)I

    move-result v1

    #v1=(Integer);
    invoke-static {v0, v1}, Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;->access$2300(Lcom/android/ex/editstyledtext/EditStyledText$EditorManager;I)V

    .line 3225
    iget-object v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->this$1:Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;

    invoke-virtual {v0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions;->onSelectAction()V

    .line 3226
    const/4 v0, 0x1

    .line 3228
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Integer);v1=(PosByte);
    invoke-virtual {p0}, Lcom/android/ex/editstyledtext/EditStyledText$EditModeActions$SetSpanActionBase;->doNotSelected()Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method
