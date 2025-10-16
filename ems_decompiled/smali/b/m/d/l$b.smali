.class public Lb/m/d/l$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/m/d/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/m/d/l;


# direct methods
.method public constructor <init>(Lb/m/d/l;)V
    .locals 0

    iput-object p1, p0, Lb/m/d/l$b;->c:Lb/m/d/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    iget-object p1, p0, Lb/m/d/l$b;->c:Lb/m/d/l;

    invoke-static {p1}, Lb/m/d/l;->access$000(Lb/m/d/l;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/m/d/l$b;->c:Lb/m/d/l;

    invoke-static {p1}, Lb/m/d/l;->access$000(Lb/m/d/l;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/m/d/l;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
