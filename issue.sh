echo "*** NO ROOT PROJECT"
cp pyproject_no_root_project.toml pyproject.toml
rm -rf .venv
uv sync
echo ">>>>"
uv run python -c "import loguru; print('loguru imported')"
echo "<<<<"

echo "*** WITH ROOT PROJECT"
cp pyproject_with_root_project.toml pyproject.toml
rm -rf .venv
uv sync
echo ">>>>"
uv run python -c "import loguru; print('loguru imported')"
echo "<<<<"
