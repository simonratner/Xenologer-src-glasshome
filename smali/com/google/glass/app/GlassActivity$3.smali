.class Lcom/google/glass/app/GlassActivity$3;
.super Ljava/lang/Object;
.source "GlassActivity.java"

# interfaces
.implements Lcom/google/glass/widget/OptionMenuDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/app/GlassActivity;->openOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastSelectedItem:Lcom/google/glass/widget/OptionMenu$Item;

.field final synthetic this$0:Lcom/google/glass/app/GlassActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/app/GlassActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraButtonPressed()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->onCameraButtonPressed()Z

    move-result v0

    return v0
.end method

.method public onClosed()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->lastSelectedItem:Lcom/google/glass/widget/OptionMenu$Item;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity$3;->lastSelectedItem:Lcom/google/glass/widget/OptionMenu$Item;

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->onOptionsItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->lastSelectedItem:Lcom/google/glass/widget/OptionMenu$Item;

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    iget-object v0, v0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    iget-object v0, v0, Lcom/google/glass/app/GlassActivity;->menuDialog:Lcom/google/glass/widget/OptionMenuDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/OptionMenuDialog;->wasCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    #getter for: Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;
    invoke-static {v1}, Lcom/google/glass/app/GlassActivity;->access$100(Lcom/google/glass/app/GlassActivity;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->onOptionsMenuCanceled(Lcom/google/glass/widget/OptionMenu;)V

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    iget-object v1, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    #getter for: Lcom/google/glass/app/GlassActivity;->menu:Lcom/google/glass/widget/OptionMenu;
    invoke-static {v1}, Lcom/google/glass/app/GlassActivity;->access$100(Lcom/google/glass/app/GlassActivity;)Lcom/google/glass/widget/OptionMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/app/GlassActivity;->onOptionsMenuClosed(Lcom/google/glass/widget/OptionMenu;)V

    .line 506
    return-void
.end method

.method public onDisallowedInput()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0}, Lcom/google/glass/app/GlassActivity;->onDisallowedInput()V

    .line 521
    return-void
.end method

.method public onItemSelected(Lcom/google/glass/widget/OptionMenu$Item;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 492
    iput-object p1, p0, Lcom/google/glass/app/GlassActivity$3;->lastSelectedItem:Lcom/google/glass/widget/OptionMenu$Item;

    .line 493
    const/4 v0, 0x1

    return v0
.end method

.method public shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/glass/app/GlassActivity$3;->this$0:Lcom/google/glass/app/GlassActivity;

    #calls: Lcom/google/glass/app/GlassActivity;->shouldAllowCameraButton()Z
    invoke-static {v0}, Lcom/google/glass/app/GlassActivity;->access$200(Lcom/google/glass/app/GlassActivity;)Z

    move-result v0

    return v0
.end method
