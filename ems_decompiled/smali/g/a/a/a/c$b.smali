.class public Lg/a/a/a/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/a/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg/a/a/a/c;


# direct methods
.method public constructor <init>(Lg/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, Lg/a/a/a/c$b;->a:Lg/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0

    iget-object p1, p0, Lg/a/a/a/c$b;->a:Lg/a/a/a/c;

    .line 1
    sget p2, Lg/a/a/a/c;->m:I

    invoke-virtual {p1}, Lg/a/a/a/c;->b()V

    return-void
.end method
