.class Lcom/android/mail/bitmap/AttachmentDrawable$1;
.super Ljava/lang/Object;
.source "AttachmentDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/bitmap/AttachmentDrawable;->onDecodeComplete(Lcom/android/bitmap/DecodeTask$Request;Lcom/android/bitmap/ReusableBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/bitmap/AttachmentDrawable;

.field final synthetic val$key:Lcom/android/bitmap/DecodeTask$Request;

.field final synthetic val$result:Lcom/android/bitmap/ReusableBitmap;


# direct methods
.method constructor <init>(Lcom/android/mail/bitmap/AttachmentDrawable;Lcom/android/bitmap/DecodeTask$Request;Lcom/android/bitmap/ReusableBitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$1;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable;

    iput-object p2, p0, Lcom/android/mail/bitmap/AttachmentDrawable$1;->val$key:Lcom/android/bitmap/DecodeTask$Request;

    iput-object p3, p0, Lcom/android/mail/bitmap/AttachmentDrawable$1;->val$result:Lcom/android/bitmap/ReusableBitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/mail/bitmap/AttachmentDrawable$1;->this$0:Lcom/android/mail/bitmap/AttachmentDrawable;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/bitmap/AttachmentDrawable$1;->val$key:Lcom/android/bitmap/DecodeTask$Request;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/bitmap/AttachmentDrawable$1;->val$result:Lcom/android/bitmap/ReusableBitmap;

    #v2=(Reference);
    invoke-static {v0, v1, v2}, Lcom/android/mail/bitmap/AttachmentDrawable;->access$000(Lcom/android/mail/bitmap/AttachmentDrawable;Lcom/android/bitmap/DecodeTask$Request;Lcom/android/bitmap/ReusableBitmap;)V

    .line 303
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string v0, "DONE"

    #v0=(Reference);
    return-object v0
.end method
